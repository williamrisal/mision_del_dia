//
//  AccountProfilView.swift
//  misión-del-dia
//
//  Created by William Risal on 25/11/2023.
//

import SwiftUI

import Foundation

struct TikTokAuthManager {
    func authenticate() {
        guard let url = URL(string: "https://open.tiktokapis.com/v2/oauth/token/") else {
            print("URL is not valid")
            return
        }
        
        var request = URLRequest(url: url)
        request.httpMethod = "POST"
        request.setValue("application/x-www-form-urlencoded", forHTTPHeaderField: "Content-Type")
        
        let clientKey = "awj8tzflsi2r322a"
        let clientSecret = "Wm7S9uXMvLECS4WVAKXeW1mKezw6xKAx"
        let body = "client_key=\(clientKey)&client_secret=\(clientSecret)&grant_type=client_credentials"
        request.httpBody = body.data(using: .utf8)
        
        let task = URLSession.shared.dataTask(with: request) { data, response, error in
            if let error = error {
                print("Error: \(error.localizedDescription)")
                return
            }
            
            guard let httpResponse = response as? HTTPURLResponse, (200...299).contains(httpResponse.statusCode) else {
                print("Invalid response")
                return
            }
            
            if let data = data {
                // Gérer la réponse de la requête ici
                do {
                    let response = try JSONSerialization.jsonObject(with: data, options: []) as? [String: Any]
                    if let accessToken = response!["access_token"] as? String {
                        // Utilisez accessToken pour la suite de vos opérations
                        print(accessToken)
                        fetchUserInfo(accessToken: accessToken, username: "joe1234567")

                    } else {
                        print("Access Token not found")
                    }
                } catch {
                    print("Error decoding response: \(error.localizedDescription)")
                }
            }
        }
        task.resume()
    }
    func fetchUserInfo(accessToken: String, username: String) {
            guard let url = URL(string: "https://open.tiktokapis.com/v2/research/user/info/?fields=display_name,bio_description,avatar_url,is_verified,follower_count,following_count,likes_count,video_count") else {
                print("faile")

              //  completion(.failure(NSError(domain: "Invalid URL", code: -1, userInfo: nil)))
                return
            }
            
            var request = URLRequest(url: url)
            request.httpMethod = "POST"
            request.setValue("Authorization", forHTTPHeaderField: "bearer \(accessToken)")
            request.setValue("Content-Type", forHTTPHeaderField: "text/plain")
            
            let userData = ["username": username]
            do {
                let jsonData = try JSONSerialization.data(withJSONObject: userData, options: [])
                request.httpBody = jsonData
            } catch {
                print(error)

               //.failure(error) completion(.failure(error))
                return
            }
            
            let task = URLSession.shared.dataTask(with: request) { data, response, error in
                if let error = error {
                    print(error)

                   // completion(.failure(error))
                    return
                }
                
                guard let httpResponse = response as? HTTPURLResponse, (200...299).contains(httpResponse.statusCode) else {
                   // completion(.failure(NSError(domain: "Invalid response", code: -1, userInfo: nil)))
                    print(NSError(domain: "Invalid response", code: -1, userInfo: nil))
                    return
                }
                
                if let data = data {
                    do {
                        let responseObject = try JSONSerialization.jsonObject(with: data, options: []) as? [String: Any]
                       // completion(.success(responseObject ?? [:]))
                        print("succes")
                        print(responseObject)

                    } catch {
                        print(error)
                    }
                }
            }
            task.resume()
        }
}


#Preview {
    AccountProfilView()
}
