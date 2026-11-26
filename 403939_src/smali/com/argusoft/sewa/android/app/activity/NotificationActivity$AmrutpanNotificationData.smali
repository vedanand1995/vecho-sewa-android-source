.class public Lcom/argusoft/sewa/android/app/activity/NotificationActivity$AmrutpanNotificationData;
.super Ljava/lang/Object;
.source "NotificationActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/argusoft/sewa/android/app/activity/NotificationActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AmrutpanNotificationData"
.end annotation


# instance fields
.field private dueOn:J

.field private member:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

.field private notificationCode:Ljava/lang/String;

.field private notificationId:J

.field private otherDetails:Ljava/lang/String;

.field private scheduledDate:J

.field final synthetic this$0:Lcom/argusoft/sewa/android/app/activity/NotificationActivity;


# direct methods
.method public constructor <init>(Lcom/argusoft/sewa/android/app/activity/NotificationActivity;Lcom/argusoft/sewa/android/app/databean/MemberDataBean;JLjava/lang/String;JJLjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 165
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity$AmrutpanNotificationData;->this$0:Lcom/argusoft/sewa/android/app/activity/NotificationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 166
    iput-object p2, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity$AmrutpanNotificationData;->member:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    .line 167
    iput-wide p3, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity$AmrutpanNotificationData;->notificationId:J

    .line 168
    iput-object p5, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity$AmrutpanNotificationData;->notificationCode:Ljava/lang/String;

    .line 169
    iput-wide p6, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity$AmrutpanNotificationData;->scheduledDate:J

    .line 170
    iput-wide p8, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity$AmrutpanNotificationData;->dueOn:J

    .line 171
    iput-object p10, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity$AmrutpanNotificationData;->otherDetails:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getDueOn()J
    .locals 2

    .line 191
    iget-wide v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity$AmrutpanNotificationData;->dueOn:J

    return-wide v0
.end method

.method public getMember()Lcom/argusoft/sewa/android/app/databean/MemberDataBean;
    .locals 1

    .line 175
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity$AmrutpanNotificationData;->member:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    return-object v0
.end method

.method public getNotificationCode()Ljava/lang/String;
    .locals 1

    .line 183
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity$AmrutpanNotificationData;->notificationCode:Ljava/lang/String;

    return-object v0
.end method

.method public getNotificationId()J
    .locals 2

    .line 179
    iget-wide v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity$AmrutpanNotificationData;->notificationId:J

    return-wide v0
.end method

.method public getOtherDetails()Ljava/lang/String;
    .locals 1

    .line 195
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity$AmrutpanNotificationData;->otherDetails:Ljava/lang/String;

    return-object v0
.end method

.method public getScheduledDate()J
    .locals 2

    .line 187
    iget-wide v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity$AmrutpanNotificationData;->scheduledDate:J

    return-wide v0
.end method
