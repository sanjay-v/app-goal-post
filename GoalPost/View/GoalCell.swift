//
//  GoalCell.swift
//  GoalPost
//
//  Created by Sanjay Vekariya on 9/1/17.
//  Copyright © 2017 Sanjay Vekariya. All rights reserved.
//

import UIKit

class GoalCell: UITableViewCell {
    // Outlets
    @IBOutlet weak var goalDescriptionLbl: UILabel!
    @IBOutlet weak var goalTypeLbl: UILabel!
    @IBOutlet weak var goalProgressLbl: UILabel!
    
    @IBOutlet weak var completeView: UIView!
    
    
    func configureCell(goal: Goal) {
        self.goalDescriptionLbl.text = goal.goalDescription
        self.goalTypeLbl.text = goal.goalType
        self.goalProgressLbl.text = String(describing: goal.goalProgress)
        
        if goal.goalProgress == goal.goalCompletionValue {
            self.completeView.isHidden = false
        } else {
            self.completeView.isHidden = true
        }
    }
    
}
