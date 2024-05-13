//
//  RMTabViewController.swift
//  RickAndMortyApp
//
//  Created by admin on 10/05/2024.
//

import UIKit

final class RMTabViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .systemBackground
        setUpTabs()
    }
    
    func setUpTabs() {
        let characterViewController = RMCharacterViewController()
        let locationViewController = RMLocationViewController()
        let episodesViewController = RMEpisodeViewController()
        let settingsViewController = RMSettingsViewController()
        
        for velue in [characterViewController,
                      locationViewController,
                      episodesViewController,
                      settingsViewController] {
            
            velue.navigationItem.largeTitleDisplayMode = .always
        }
        
        
        let navigationCharacter = UINavigationController(rootViewController: characterViewController)
        let navigationLocation = UINavigationController(rootViewController: locationViewController)
        let navigationEpisodes = UINavigationController(rootViewController: episodesViewController)
        let navigationSettings = UINavigationController(rootViewController: settingsViewController)
        
        navigationCharacter.tabBarItem = UITabBarItem(title: "Characters",
                                                      image: UIImage(systemName: "person.2"), tag: 0)
        navigationLocation.tabBarItem = UITabBarItem(title: "Location",
                                                     image: UIImage(systemName: "globe"), tag: 1)
        navigationEpisodes.tabBarItem = UITabBarItem(title: "Episodes",
                                                     image: UIImage(systemName: "play.tv"), tag: 2)
        navigationSettings.tabBarItem = UITabBarItem(title: "Settings",
                                                     image: UIImage(systemName: "gearshape"), tag: 3)
        
        for value in [navigationCharacter,
                      navigationLocation,
                      navigationEpisodes,
                      navigationSettings] {
            
            value.navigationBar.prefersLargeTitles = true
        }
        
        setViewControllers([navigationCharacter,
                            navigationLocation,
                            navigationEpisodes,
                            navigationSettings],
                           animated: true)
    }
}
