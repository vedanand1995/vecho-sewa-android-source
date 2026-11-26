.class public Lcom/argusoft/sewa/android/app/model/ReadNotificationsBean;
.super Lcom/argusoft/sewa/android/app/model/BaseEntity;
.source "ReadNotificationsBean.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lcom/j256/ormlite/table/DatabaseTable;
.end annotation


# instance fields
.field private notificationId:Ljava/lang/Long;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/model/BaseEntity;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 0

    .line 27
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/model/BaseEntity;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getNotificationId()Ljava/lang/Long;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/ReadNotificationsBean;->notificationId:Ljava/lang/Long;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 32
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/model/BaseEntity;->hashCode()I

    move-result v0

    return v0
.end method

.method public setNotificationId(Ljava/lang/Long;)V
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/ReadNotificationsBean;->notificationId:Ljava/lang/Long;

    return-void
.end method
