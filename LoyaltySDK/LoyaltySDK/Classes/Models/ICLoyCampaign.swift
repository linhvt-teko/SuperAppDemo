//
//	ICQuestion.swift
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport

import Foundation 
import ObjectMapper
import ICheckCore
import ICheckSDK

public enum TimeStatus: String {
    case PENDING
    case RUNNING
    case COMPLETED
}

public enum ICLoyCampaignType: String {
	case game = "mini_game"
	case gift = "receive_gift"
	case point = "accumulate_point"
	case memberPoint = "accumulation_long_term_point"
    
    case gameQRMar = "mini_game_qr_mar"
    case giftQRMar = "receive_gift_qr_mar"
    case pointQRMar = "accumulate_point_qr_mar"
    case memberPointQRMar = "accumulation_long_term_point_qr_mar"
}

open class ICLoyCampaign : ICBaseModel {

	open var id : Int?
	open var name : String?
	open var image : ICLuckyWheelImage?
    open var type : ICLoyCampaignType?
    open var targetType : String?
    open var des : String?
    open var benefit: Int?
    open var status: String?
    open var statusTime: TimeStatus?
    open var creatorId: Int?
    open var ownerId: Int?
    open var owner: ICLoyOwner?
    open var userCount: Int?
    open var winnerCount: Int?
    open var publishType: String?
    open var reason: String?
    open var hasChanceCode: Bool?
    open var startAt: String?
    open var endAt: String?
    open var publishAt: String?
    open var createdAt: String?
    open var updatedAt: String?
    open var deletedAt: String?
    open var titleButton: String?
    open var landingPage: String?
    open var schemaButton: String?
	open var box : ICLuckyWheelBox?
	open var headerImage: ICLuckyWheelImage?
	open var backgroundImage: ICLuckyWheelImage?
	open var winnerPoints: [ICLoyWinnerPoint]?
	open var gameUsers: [ICLoyGameUser]?
	open var introductionImage: ICLuckyWheelImage?
    
    //custom data
    open var targetValue : String?


	open override func mapping(map: Map)
	{
		id <- map["id"]
		name <- map["name"]
		image <- map["image"]
        type <- map["type"]
        targetType <- map["target_type"]
        des <- map["description"]
        benefit <- map["benefit"]
        status <- map["status"]
        creatorId <- map["creator_id"]
        ownerId <- map["owner_id"]
        userCount <- map["user_count"]
		winnerCount <- map["winner_count"]
        publishType <- map["publish_type"]
        reason <- map["reason"]
        hasChanceCode <- map["has_chance_code"]
        startAt <- map["start_at"]
        endAt <- map["end_at"]
        publishAt <- map["publish_at"]
        createdAt <- map["created_at"]
        updatedAt <- map["updated_at"]
        deletedAt <- map["deleted_at"]
        owner <- map["owner"]
        landingPage <- map["landing_page"]
        titleButton <- map["title_button"]
        schemaButton <- map["schema_button"]
        statusTime <- (map["status_time"], EnumTransform())
		box <- map["box"]
		headerImage <- map["header_image_rotation"]
		backgroundImage <- map["background_rotation"]
		winnerPoints <- map["statistic_winner_accumulate_point"]
		gameUsers <- map["campaign_game_user"]
		introductionImage <- map["introduction_image"]
	}

}
