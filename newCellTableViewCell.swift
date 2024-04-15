//
//  newCellTableViewCell.swift
//  toDoList2
//
//  Created by Anastasia on 14/04/24.
//

import UIKit

class newCellTableViewCell: UITableViewCell {

    @IBOutlet weak var firstTitle: UILabel!
    @IBOutlet weak var secondTitle: UILabel!
    @IBOutlet weak var groupImage: UIImageView!
    
    var text1: String = ""
    var note: Note!
    
    func addNote(note: Note, isCompleted: Bool) {
        
        firstTitle.textColor = .black
        firstTitle.textAlignment = .left
        firstTitle.numberOfLines = 2
        firstTitle.font = .monospacedSystemFont(ofSize: 20, weight: .regular)
        firstTitle.text = text1
        
        secondTitle.textColor = .systemGray3
        secondTitle.textAlignment = .left
        secondTitle.numberOfLines = 1
        secondTitle.font = .monospacedSystemFont(ofSize: 10, weight: .thin)
        
        groupImage.tintColor = .black
        let checkmark = UIButton(type: .custom)
        checkmark.frame = CGRect(x: 0, y: 0, width: 25, height: 25)
        checkmark.setImage(UIImage(systemName: "checkmark.circle"), for: .normal)
        checkmark.tintColor = .black
        checkmark.addTarget(self, action: #selector(checkmarkDone), for: .touchUpInside)
        
        accessoryView = checkmark
        
        firstTitle.text = note.title
        secondTitle.text = note.group
        groupImage.image = note.image

       
    }
    
    @objc private func checkmarkDone(_ sender: UIButton) {
//        note.isCompleted.toggle()
  
            sender.setImage(UIImage(systemName: "checkmark.circle.fill"), for: .normal)
            sender.tintColor = .black
        
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
       
    }
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
}

