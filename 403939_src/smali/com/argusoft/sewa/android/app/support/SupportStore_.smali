.class public final Lcom/argusoft/sewa/android/app/support/SupportStore_;
.super Lcom/argusoft/sewa/android/app/support/SupportStore;
.source "SupportStore_.java"


# static fields
.field private static instance_:Lcom/argusoft/sewa/android/app/support/SupportStore_;


# instance fields
.field private context_:Landroid/content/Context;

.field private dBConnection_:Lcom/argusoft/sewa/android/app/db/DBConnection;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/support/SupportStore;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/support/SupportStore_;->context_:Landroid/content/Context;

    return-void
.end method

.method public static getInstance_(Landroid/content/Context;)Lcom/argusoft/sewa/android/app/support/SupportStore_;
    .locals 2

    .line 33
    sget-object v0, Lcom/argusoft/sewa/android/app/support/SupportStore_;->instance_:Lcom/argusoft/sewa/android/app/support/SupportStore_;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 34
    invoke-static {v0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->replaceNotifier(Lorg/androidannotations/api/view/OnViewChangedNotifier;)Lorg/androidannotations/api/view/OnViewChangedNotifier;

    move-result-object v0

    .line 35
    new-instance v1, Lcom/argusoft/sewa/android/app/support/SupportStore_;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/argusoft/sewa/android/app/support/SupportStore_;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/argusoft/sewa/android/app/support/SupportStore_;->instance_:Lcom/argusoft/sewa/android/app/support/SupportStore_;

    .line 36
    invoke-direct {v1}, Lcom/argusoft/sewa/android/app/support/SupportStore_;->init_()V

    .line 37
    invoke-static {v0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->replaceNotifier(Lorg/androidannotations/api/view/OnViewChangedNotifier;)Lorg/androidannotations/api/view/OnViewChangedNotifier;

    .line 39
    :cond_0
    sget-object p0, Lcom/argusoft/sewa/android/app/support/SupportStore_;->instance_:Lcom/argusoft/sewa/android/app/support/SupportStore_;

    return-object p0
.end method

.method private init_()V
    .locals 3

    .line 43
    const-string v0, "SupportStore_"

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/support/SupportStore_;->context_:Landroid/content/Context;

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/support/SupportApi_;->getInstance_(Landroid/content/Context;)Lcom/argusoft/sewa/android/app/support/SupportApi_;

    move-result-object v1

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/support/SupportStore_;->api:Lcom/argusoft/sewa/android/app/support/SupportApi;

    .line 44
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/support/SupportStore_;->context_:Landroid/content/Context;

    const-class v2, Lcom/argusoft/sewa/android/app/db/DBConnection;

    invoke-static {v1, v2}, Lcom/j256/ormlite/android/apptools/OpenHelperManager;->getHelper(Landroid/content/Context;Ljava/lang/Class;)Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;

    move-result-object v1

    check-cast v1, Lcom/argusoft/sewa/android/app/db/DBConnection;

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/support/SupportStore_;->dBConnection_:Lcom/argusoft/sewa/android/app/db/DBConnection;

    .line 46
    :try_start_0
    const-class v2, Lcom/argusoft/sewa/android/app/model/SupportTicketBean;

    invoke-virtual {v1, v2}, Lcom/argusoft/sewa/android/app/db/DBConnection;->getDao(Ljava/lang/Class;)Lcom/j256/ormlite/dao/Dao;

    move-result-object v1

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/support/SupportStore_;->tickets:Lcom/j256/ormlite/dao/Dao;
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 48
    const-string v2, "Could not create DAO tickets"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 51
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/support/SupportStore_;->dBConnection_:Lcom/argusoft/sewa/android/app/db/DBConnection;

    const-class v2, Lcom/argusoft/sewa/android/app/model/SupportCommentBean;

    invoke-virtual {v1, v2}, Lcom/argusoft/sewa/android/app/db/DBConnection;->getDao(Ljava/lang/Class;)Lcom/j256/ormlite/dao/Dao;

    move-result-object v1

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/support/SupportStore_;->comments:Lcom/j256/ormlite/dao/Dao;
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    .line 53
    const-string v2, "Could not create DAO comments"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 56
    :goto_1
    :try_start_2
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/support/SupportStore_;->dBConnection_:Lcom/argusoft/sewa/android/app/db/DBConnection;

    const-class v2, Lcom/argusoft/sewa/android/app/model/SupportAttachmentBean;

    invoke-virtual {v1, v2}, Lcom/argusoft/sewa/android/app/db/DBConnection;->getDao(Ljava/lang/Class;)Lcom/j256/ormlite/dao/Dao;

    move-result-object v1

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/support/SupportStore_;->attachments:Lcom/j256/ormlite/dao/Dao;
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v1

    .line 58
    const-string v2, "Could not create DAO attachments"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 61
    :goto_2
    :try_start_3
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/support/SupportStore_;->dBConnection_:Lcom/argusoft/sewa/android/app/db/DBConnection;

    const-class v2, Lcom/argusoft/sewa/android/app/model/SupportActionBean;

    invoke-virtual {v1, v2}, Lcom/argusoft/sewa/android/app/db/DBConnection;->getDao(Ljava/lang/Class;)Lcom/j256/ormlite/dao/Dao;

    move-result-object v1

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/support/SupportStore_;->actions:Lcom/j256/ormlite/dao/Dao;
    :try_end_3
    .catch Ljava/sql/SQLException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    :catch_3
    move-exception v1

    .line 63
    const-string v2, "Could not create DAO actions"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_3
    return-void
.end method
