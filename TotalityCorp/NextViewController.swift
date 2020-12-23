//
//  NextViewController.swift
//  TotalityCorp
//
//  Created by Aditya Ambekar on 23/12/20.
//

import UIKit

class NextViewController: UIPageViewController {

    private let vc1: BaseViewController1 = {
        let vc = BaseViewController1()
        return vc
    }()
    
    private let vc2: BaseViewController2 = {
        let vc = BaseViewController2()
        return vc
    }()
    
    private let vc3: BaseViewController3 = {
        let vc = BaseViewController3()
        return vc
    }()
    
    var pages: [UIViewController] = [UIViewController]()

    override init(transitionStyle style: UIPageViewController.TransitionStyle, navigationOrientation: UIPageViewController.NavigationOrientation, options: [UIPageViewController.OptionsKey : Any]? = nil) {
        super.init(transitionStyle: .scroll, navigationOrientation: .horizontal, options: nil)
    }

    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        dataSource = self
        delegate = nil
        
        // instantiate "pages"
        pages.append(vc1)
        pages.append(vc2)
        pages.append(vc3)
        
        setViewControllers([pages[0]], direction: .forward, animated: false, completion: nil)
    }
    
}


extension NextViewController: UIPageViewControllerDataSource, UIPageViewControllerDelegate {
    
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        
        guard let viewControllerIndex = pages.firstIndex(of: viewController)else {
            return nil
        }
        let previousIndex = viewControllerIndex - 1
        guard previousIndex >= 0 else {
            return pages.last
        }
        guard pages.count > previousIndex else {
            return nil
        }
        return pages[previousIndex]
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
        guard let viewControllerIndex = pages.firstIndex(of: viewController) else { return nil }
        let nextIndex = viewControllerIndex + 1
        guard nextIndex < pages.count else { return pages.first }
        guard pages.count > nextIndex else { return nil }
        return pages[nextIndex]
    }
    
}
