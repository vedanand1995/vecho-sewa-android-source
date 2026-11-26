.class Lcom/argusoft/sewa/android/app/core/impl/NotificationServiceImpl$2;
.super Ljava/lang/Object;
.source "NotificationServiceImpl.java"

# interfaces
.implements Lcom/j256/ormlite/dao/RawRowMapper;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/core/impl/NotificationServiceImpl;->getPregnantWomenNotifications(Ljava/util/List;Ljava/lang/String;Ljava/lang/CharSequence;JJLjava/util/Date;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/j256/ormlite/dao/RawRowMapper<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/argusoft/sewa/android/app/core/impl/NotificationServiceImpl;


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/core/impl/NotificationServiceImpl;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 332
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/core/impl/NotificationServiceImpl$2;->this$0:Lcom/argusoft/sewa/android/app/core/impl/NotificationServiceImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public mapRow([Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Integer;
    .locals 0

    const/4 p1, 0x0

    .line 335
    aget-object p1, p2, p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mapRow([Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 332
    invoke-virtual {p0, p1, p2}, Lcom/argusoft/sewa/android/app/core/impl/NotificationServiceImpl$2;->mapRow([Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
