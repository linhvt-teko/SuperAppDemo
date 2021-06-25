//
//  ICLoyConstants.swift
//  LoyaltySDK
//
//  Created by DucDT on 8/27/19.
//

import UIKit

class apis: NSObject {
	#if DEVELOP
	static let host = "https://api.dev.icheck.vn/api/business"
// 	static let host = "https://api.dev.icheck.vn/api/staging/business"//Staging
	#else
//    static let host = "https://api.icheck.com.vn/api/business"
	static let host = "https://api-social.icheck.com.vn/api/business"//Gateway V2
	#endif

    class Campaign {
		static let listMyCampaigns = "/loyalty/customer/campaign/active/list"
        static let getCampaign = "/loyalty/campaign/get-campaign"
        static let checkCodeGetGift = "/loyalty/campaign/get-gift"
        static let getGamePlayTurn = "/loyalty/customer/campaign/game"
        static let receiveGift = "/loyalty/winner/%@/customer-update"
        static let rejectGift = "/loyalty/customer/winner/%@/refuse-gift"
        static let detailCampaign = "/loyalty/campaign/%d"//OLD
		static let campaignDetail = "/loyalty/customer/campaign/%d"
        static let loyaltyCampaignInfo = "/loyalty/customer/campaign/%@"
        static let myGifts = "/loyalty/winner/gift/me"
        static let detailMyGift = "/loyalty/winner/gift/%@"
        static let listHistoriesCode = "/loyalty/customer/code"
		static let listScanQRHistories = "/loyalty/customer/campaign/history-scan"
		static let listRewards = "/loyalty/customer/campaign/gifts"
		static let voucherScanInfo = "/loyalty/cms/voucher/scan"
		static let exchangeCard = "/loyalty/customer/campaign/receive-gift"
        static let markUsed = "/loyalty/cms/voucher/mark-use"
    }

	class Game {
		static let listMyGame = "/loyalty/customer/campaign/list/game"
		static func luckyWheelCampaign(id: Int) -> String {
			return "/loyalty/customer/campaign/\(id)/game/lucky-wheel"
		}
		static let playGame = "/loyalty/customer/campaign/game/play" //POST
		static let listTopWinners = "/public/loyalty/winner/top_winner"	//Top nguoi trung thuong
		static func listWinners(campaignId: Int) -> String {
			return "/loyalty/customer/campaign/\(campaignId)/winners"
		}
	}
	
	class Point {
		static func listAvailableGifts(campaignId: Int) -> String {
			return "/loyalty/customer/campaign/\(campaignId)/accumulate/gifts"
		}
		static func userPointInfo(campaignId: Int) -> String {
			return "/loyalty/customer/campaign/\(campaignId)/accumulate/info"
		}
        static func giftExchangeDetail(winnerId: Int) -> String {
            return "/loyalty/customer/campaign/accumulate-member/history-exchange-gift/\(winnerId)"
        }
		static let gotPoint = "/loyalty/customer/campaign/accumulate-point"	//POST
		static func listTopWinners(campaignId: Int) -> String {
			return "/loyalty/customer/campaign/\(campaignId)/top-accumulate-points"
		}
		static func listWinners(campaignId: Int) -> String {
			return "/loyalty/customer/campaign/\(campaignId)/recent-accumulate-points"
		}
		static let exchangeGift = "/loyalty/customer/campaign/exchange/gift" //POST
		static func pointHistories(campaignId: Int) -> String {
			return  "/loyalty/customer/campaign/\(campaignId)/history-get-points"
		}
	}
}

