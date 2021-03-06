// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/noppoMan/aws-sdk-swift/blob/master/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import Foundation
import AWSSDKSwiftCore

/**
AWS Security Hub provides you with a comprehensive view of your security state within AWS and your compliance with the security industry standards and best practices. Security Hub collects security data from across AWS accounts, services, and supported third-party partners and helps you analyze your security trends and identify the highest priority security issues. For more information, see AWS Security Hub User Guide. 
*/
public struct SecurityHub {

    let client: AWSClient

    public init(accessKeyId: String? = nil, secretAccessKey: String? = nil, region: AWSSDKSwiftCore.Region? = nil, endpoint: String? = nil) {
        self.client = AWSClient(
            accessKeyId: accessKeyId,
            secretAccessKey: secretAccessKey,
            region: region,
            service: "securityhub",
            serviceProtocol: ServiceProtocol(type: .restjson, version: ServiceProtocol.Version(major: 1, minor: 1)),
            apiVersion: "2018-10-26",
            endpoint: endpoint,
            middlewares: [],
            possibleErrorTypes: [SecurityHubErrorType.self]
        )
    }

    ///  Returns the details on the Security Hub member accounts that are specified by the account IDs. 
    public func getMembers(_ input: GetMembersRequest) throws -> GetMembersResponse {
        return try client.send(operation: "GetMembers", path: "/members/get", httpMethod: "POST", input: input)
    }

    ///  Lists and describes enabled standards.
    public func getEnabledStandards(_ input: GetEnabledStandardsRequest) throws -> GetEnabledStandardsResponse {
        return try client.send(operation: "GetEnabledStandards", path: "/standards/get", httpMethod: "POST", input: input)
    }

    ///  Declines invitations that are sent to this AWS account (invitee) by the AWS accounts (inviters) that are specified by the account IDs. 
    public func declineInvitations(_ input: DeclineInvitationsRequest) throws -> DeclineInvitationsResponse {
        return try client.send(operation: "DeclineInvitations", path: "/invitations/decline", httpMethod: "POST", input: input)
    }

    ///  Provides the details for the Security Hub master account to the current member account. 
    public func getMasterAccount(_ input: GetMasterAccountRequest) throws -> GetMasterAccountResponse {
        return try client.send(operation: "GetMasterAccount", path: "/master", httpMethod: "GET", input: input)
    }

    ///  Deletes the Security Hub member accounts that are specified by the account IDs.
    public func deleteMembers(_ input: DeleteMembersRequest) throws -> DeleteMembersResponse {
        return try client.send(operation: "DeleteMembers", path: "/members/delete", httpMethod: "POST", input: input)
    }

    ///  Creates member Security Hub accounts in the current AWS account (which becomes the master Security Hub account) that has Security Hub enabled.
    public func createMembers(_ input: CreateMembersRequest) throws -> CreateMembersResponse {
        return try client.send(operation: "CreateMembers", path: "/members", httpMethod: "POST", input: input)
    }

    ///  Deletes invitations that are sent to this AWS account (invitee) by the AWS accounts (inviters) that are specified by their account IDs. 
    public func deleteInvitations(_ input: DeleteInvitationsRequest) throws -> DeleteInvitationsResponse {
        return try client.send(operation: "DeleteInvitations", path: "/invitations/delete", httpMethod: "POST", input: input)
    }

    ///  Updates the AWS Security Hub-aggregated findings specified by the filter attributes.
    public func updateFindings(_ input: UpdateFindingsRequest) throws -> UpdateFindingsResponse {
        return try client.send(operation: "UpdateFindings", path: "/findings", httpMethod: "PATCH", input: input)
    }

    ///  Enables you to import findings generated by integrated third-party providers into Security Hub.
    public func enableImportFindingsForProduct(_ input: EnableImportFindingsForProductRequest) throws -> EnableImportFindingsForProductResponse {
        return try client.send(operation: "EnableImportFindingsForProduct", path: "/productSubscriptions", httpMethod: "POST", input: input)
    }

    ///  Lists and describes insights that are specified by insight ARNs.
    public func getInsights(_ input: GetInsightsRequest) throws -> GetInsightsResponse {
        return try client.send(operation: "GetInsights", path: "/insights/get", httpMethod: "POST", input: input)
    }

    ///  Imports security findings that are generated by the integrated third-party products into Security Hub.
    public func batchImportFindings(_ input: BatchImportFindingsRequest) throws -> BatchImportFindingsResponse {
        return try client.send(operation: "BatchImportFindings", path: "/findings/import", httpMethod: "POST", input: input)
    }

    ///  Lists and describes Security Hub-aggregated findings that are specified by filter attributes.
    public func getFindings(_ input: GetFindingsRequest) throws -> GetFindingsResponse {
        return try client.send(operation: "GetFindings", path: "/findings", httpMethod: "POST", input: input)
    }

    ///  Lists all Security Hub membership invitations that were sent to the current AWS account. 
    public func listInvitations(_ input: ListInvitationsRequest) throws -> ListInvitationsResponse {
        return try client.send(operation: "ListInvitations", path: "/invitations", httpMethod: "GET", input: input)
    }

    ///  Disables the AWS Security Hub Service.
    public func disableSecurityHub(_ input: DisableSecurityHubRequest) throws -> DisableSecurityHubResponse {
        return try client.send(operation: "DisableSecurityHub", path: "/accounts", httpMethod: "DELETE", input: input)
    }

    ///  Accepts the invitation to be monitored by a master SecurityHub account.
    public func acceptInvitation(_ input: AcceptInvitationRequest) throws -> AcceptInvitationResponse {
        return try client.send(operation: "AcceptInvitation", path: "/master", httpMethod: "POST", input: input)
    }

    ///  Updates the AWS Security Hub insight specified by the insight ARN.
    public func updateInsight(_ input: UpdateInsightRequest) throws -> UpdateInsightResponse {
        return try client.send(operation: "UpdateInsight", path: "/insights/{InsightArn+}", httpMethod: "PATCH", input: input)
    }

    ///  Invites other AWS accounts to enable Security Hub and become Security Hub member accounts. When an account accepts the invitation and becomes a member account, the master account can view Security Hub findings of the member account. 
    public func inviteMembers(_ input: InviteMembersRequest) throws -> InviteMembersResponse {
        return try client.send(operation: "InviteMembers", path: "/members/invite", httpMethod: "POST", input: input)
    }

    ///  Enables the AWS Security Hub service.
    public func enableSecurityHub(_ input: EnableSecurityHubRequest) throws -> EnableSecurityHubResponse {
        return try client.send(operation: "EnableSecurityHub", path: "/accounts", httpMethod: "POST", input: input)
    }

    ///  Lists details about all member accounts for the current Security Hub master account.
    public func listMembers(_ input: ListMembersRequest) throws -> ListMembersResponse {
        return try client.send(operation: "ListMembers", path: "/members", httpMethod: "GET", input: input)
    }

    ///  Disassociates the Security Hub member accounts that are specified by the account IDs from their master account. 
    public func disassociateMembers(_ input: DisassociateMembersRequest) throws -> DisassociateMembersResponse {
        return try client.send(operation: "DisassociateMembers", path: "/members/disassociate", httpMethod: "POST", input: input)
    }

    ///  Disassociates the current Security Hub member account from its master account.
    public func disassociateFromMasterAccount(_ input: DisassociateFromMasterAccountRequest) throws -> DisassociateFromMasterAccountResponse {
        return try client.send(operation: "DisassociateFromMasterAccount", path: "/master/disassociate", httpMethod: "POST", input: input)
    }

    ///  Deletes an insight that is specified by the insight ARN.
    public func deleteInsight(_ input: DeleteInsightRequest) throws -> DeleteInsightResponse {
        return try client.send(operation: "DeleteInsight", path: "/insights/{InsightArn+}", httpMethod: "DELETE", input: input)
    }

    ///  Lists all Security Hub-integrated third-party findings providers.
    public func listEnabledProductsForImport(_ input: ListEnabledProductsForImportRequest) throws -> ListEnabledProductsForImportResponse {
        return try client.send(operation: "ListEnabledProductsForImport", path: "/productSubscriptions", httpMethod: "GET", input: input)
    }

    ///  Disables the standards specified by the standards subscription ARNs. In the context of Security Hub, supported standards (for example, CIS AWS Foundations) are automated and continuous checks that help determine your compliance status against security industry (including AWS) best practices. 
    public func batchDisableStandards(_ input: BatchDisableStandardsRequest) throws -> BatchDisableStandardsResponse {
        return try client.send(operation: "BatchDisableStandards", path: "/standards/deregister", httpMethod: "POST", input: input)
    }

    ///  Lists the results of the Security Hub insight specified by the insight ARN.
    public func getInsightResults(_ input: GetInsightResultsRequest) throws -> GetInsightResultsResponse {
        return try client.send(operation: "GetInsightResults", path: "/insights/results/{InsightArn+}", httpMethod: "GET", input: input)
    }

    ///  Creates an insight, which is a consolidation of findings that identifies a security area that requires attention or intervention.
    public func createInsight(_ input: CreateInsightRequest) throws -> CreateInsightResponse {
        return try client.send(operation: "CreateInsight", path: "/insights", httpMethod: "POST", input: input)
    }

    ///  Enables the standards specified by the standards ARNs. In the context of Security Hub, supported standards (for example, CIS AWS Foundations) are automated and continuous checks that help determine your compliance status against security industry (including AWS) best practices. 
    public func batchEnableStandards(_ input: BatchEnableStandardsRequest) throws -> BatchEnableStandardsResponse {
        return try client.send(operation: "BatchEnableStandards", path: "/standards/register", httpMethod: "POST", input: input)
    }

    ///  Returns the count of all Security Hub membership invitations that were sent to the current member account, not including the currently accepted invitation. 
    public func getInvitationsCount(_ input: GetInvitationsCountRequest) throws -> GetInvitationsCountResponse {
        return try client.send(operation: "GetInvitationsCount", path: "/invitations/count", httpMethod: "GET", input: input)
    }

    ///  Stops you from being able to import findings generated by integrated third-party providers into Security Hub.
    public func disableImportFindingsForProduct(_ input: DisableImportFindingsForProductRequest) throws -> DisableImportFindingsForProductResponse {
        return try client.send(operation: "DisableImportFindingsForProduct", path: "/productSubscriptions/{ProductSubscriptionArn+}", httpMethod: "DELETE", input: input)
    }


}