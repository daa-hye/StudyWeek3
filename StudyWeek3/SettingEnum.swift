//
//  SettingEnum.swift
//  StudyWeek3
//
//  Created by 박다혜 on 2023/08/01.
//

import Foundation

enum SettingList: Int, CaseIterable {

    case total, personal, etc

    var mainSetting: String {
        switch self {
        case .total: return "전체 설정"
        case .personal: return "개인 설정"
        case .etc: return "기타"
        }
    }

    var subSetting: [String] {
        switch self {
        case .total: return ["공지사항", "실험실","버전 정보"]
        case .personal: return ["개인/보안", "알림", "채팅", "멀티프로필"]
        case .etc : return ["고객센터/도움말"]
        }
    }
}
