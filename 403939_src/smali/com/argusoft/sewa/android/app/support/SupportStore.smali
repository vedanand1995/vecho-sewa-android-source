.class public Lcom/argusoft/sewa/android/app/support/SupportStore;
.super Ljava/lang/Object;
.source "SupportStore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/argusoft/sewa/android/app/support/SupportStore$Summary;,
        Lcom/argusoft/sewa/android/app/support/SupportStore$IdSetter;,
        Lcom/argusoft/sewa/android/app/support/SupportStore$SqlWork;,
        Lcom/argusoft/sewa/android/app/support/SupportStore$SyncResult;,
        Lcom/argusoft/sewa/android/app/support/SupportStore$Send;
    }
.end annotation


# static fields
.field private static final DETAIL_LIMIT:I = 0xf

.field private static final DONE:Ljava/lang/String; = "CLOSED,REJECTED,CANCELLED"

.field private static final PREFETCH_LIMIT:J = 0x300000L

.field private static final TAG:Ljava/lang/String; = "SupportStore"


# instance fields
.field actions:Lcom/j256/ormlite/dao/Dao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/Dao<",
            "Lcom/argusoft/sewa/android/app/model/SupportActionBean;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field api:Lcom/argusoft/sewa/android/app/support/SupportApi;

.field attachments:Lcom/j256/ormlite/dao/Dao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/Dao<",
            "Lcom/argusoft/sewa/android/app/model/SupportAttachmentBean;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field comments:Lcom/j256/ormlite/dao/Dao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/Dao<",
            "Lcom/argusoft/sewa/android/app/model/SupportCommentBean;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field tickets:Lcom/j256/ormlite/dao/Dao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/Dao<",
            "Lcom/argusoft/sewa/android/app/model/SupportTicketBean;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static apply(Lcom/argusoft/sewa/android/app/model/SupportTicketBean;Lcom/argusoft/sewa/android/app/support/SupportTicket;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 595
    :cond_0
    iget-object v0, p1, Lcom/argusoft/sewa/android/app/support/SupportTicket;->id:Ljava/lang/Long;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/model/SupportTicketBean;->serverId:Ljava/lang/Long;

    .line 596
    iget-object v0, p1, Lcom/argusoft/sewa/android/app/support/SupportTicket;->ticketNumber:Ljava/lang/String;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/model/SupportTicketBean;->ticketNumber:Ljava/lang/String;

    .line 597
    iget-object v0, p1, Lcom/argusoft/sewa/android/app/support/SupportTicket;->title:Ljava/lang/String;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/model/SupportTicketBean;->title:Ljava/lang/String;

    .line 598
    iget-object v0, p1, Lcom/argusoft/sewa/android/app/support/SupportTicket;->description:Ljava/lang/String;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/model/SupportTicketBean;->description:Ljava/lang/String;

    .line 599
    iget-object v0, p1, Lcom/argusoft/sewa/android/app/support/SupportTicket;->status:Ljava/lang/String;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/model/SupportTicketBean;->status:Ljava/lang/String;

    .line 600
    iget-object v0, p1, Lcom/argusoft/sewa/android/app/support/SupportTicket;->topic:Ljava/lang/String;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/model/SupportTicketBean;->topic:Ljava/lang/String;

    .line 601
    iget-object v0, p1, Lcom/argusoft/sewa/android/app/support/SupportTicket;->createdAt:Ljava/lang/String;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/model/SupportTicketBean;->createdAt:Ljava/lang/String;

    .line 602
    iget-object v0, p1, Lcom/argusoft/sewa/android/app/support/SupportTicket;->statusChangedAt:Ljava/lang/String;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/model/SupportTicketBean;->statusChangedAt:Ljava/lang/String;

    .line 603
    iget-object v0, p1, Lcom/argusoft/sewa/android/app/support/SupportTicket;->resolutionSummary:Ljava/lang/String;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/model/SupportTicketBean;->resolutionSummary:Ljava/lang/String;

    .line 604
    iget-object v0, p1, Lcom/argusoft/sewa/android/app/support/SupportTicket;->allowedActions:Ljava/util/List;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    const-string v0, ","

    iget-object p1, p1, Lcom/argusoft/sewa/android/app/support/SupportTicket;->allowedActions:Ljava/util/List;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/SupportTicketBean;->allowedActions:Ljava/lang/String;

    return-void
.end method

.method private byServerId(Ljava/lang/Long;Ljava/lang/Long;)Lcom/argusoft/sewa/android/app/model/SupportTicketBean;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 586
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/support/SupportStore;->tickets:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v0}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    const-string v1, "ownerUserId"

    invoke-virtual {v0, v1, p1}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object p1

    invoke-virtual {p1}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    move-result-object p1

    const-string v0, "serverId"

    .line 587
    invoke-virtual {p1, v0, p2}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object p1

    invoke-virtual {p1}, Lcom/j256/ormlite/stmt/Where;->query()Ljava/util/List;

    move-result-object p1

    .line 588
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/argusoft/sewa/android/app/model/SupportTicketBean;

    :goto_0
    return-object p1
.end method

.method public static hasCopy(Lcom/argusoft/sewa/android/app/model/SupportAttachmentBean;)Z
    .locals 1

    .line 536
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/SupportAttachmentBean;->localPath:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/File;

    iget-object p0, p0, Lcom/argusoft/sewa/android/app/model/SupportAttachmentBean;->localPath:Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private declared-synchronized insert(Lcom/j256/ormlite/dao/Dao;Ljava/lang/Object;Lcom/argusoft/sewa/android/app/support/SupportStore$IdSetter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/j256/ormlite/dao/Dao<",
            "TT;",
            "Ljava/lang/Integer;",
            ">;TT;",
            "Lcom/argusoft/sewa/android/app/support/SupportStore$IdSetter;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const-string v0, "SELECT MAX(`_ID`) FROM `"

    monitor-enter p0

    .line 637
    :try_start_0
    invoke-interface {p1, p2}, Lcom/j256/ormlite/dao/Dao;->create(Ljava/lang/Object;)I

    .line 638
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/j256/ormlite/dao/Dao;->getTableName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "`"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p1, p2, v0}, Lcom/j256/ormlite/dao/Dao;->queryRawValue(Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide p1

    long-to-int p2, p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p3, p1}, Lcom/argusoft/sewa/android/app/support/SupportStore$IdSetter;->set(Ljava/lang/Integer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 639
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method static synthetic lambda$comments$1(Lcom/argusoft/sewa/android/app/model/SupportCommentBean;Lcom/argusoft/sewa/android/app/model/SupportCommentBean;)I
    .locals 2

    .line 114
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/model/SupportCommentBean;->createdAt:Ljava/lang/String;

    invoke-static {p0}, Lcom/argusoft/sewa/android/app/support/SupportStatus;->millis(Ljava/lang/String;)J

    move-result-wide v0

    iget-object p0, p1, Lcom/argusoft/sewa/android/app/model/SupportCommentBean;->createdAt:Ljava/lang/String;

    invoke-static {p0}, Lcom/argusoft/sewa/android/app/support/SupportStatus;->millis(Ljava/lang/String;)J

    move-result-wide p0

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Long;->compare(JJ)I

    move-result p0

    return p0
.end method

.method static synthetic lambda$tickets$0(Lcom/argusoft/sewa/android/app/model/SupportTicketBean;Lcom/argusoft/sewa/android/app/model/SupportTicketBean;)I
    .locals 4

    .line 88
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/SupportTicketBean;->syncState:Ljava/lang/String;

    const-string v1, "SYNCED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v2, v0, 0x1

    .line 89
    iget-object v3, p1, Lcom/argusoft/sewa/android/app/model/SupportTicketBean;->syncState:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x1

    xor-int/2addr v1, v3

    if-eq v2, v1, :cond_1

    if-nez v0, :cond_0

    const/4 v3, -0x1

    :cond_0
    return v3

    .line 93
    :cond_1
    iget-object p1, p1, Lcom/argusoft/sewa/android/app/model/SupportTicketBean;->createdAt:Ljava/lang/String;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/support/SupportStatus;->millis(Ljava/lang/String;)J

    move-result-wide v0

    iget-object p0, p0, Lcom/argusoft/sewa/android/app/model/SupportTicketBean;->createdAt:Ljava/lang/String;

    invoke-static {p0}, Lcom/argusoft/sewa/android/app/support/SupportStatus;->millis(Ljava/lang/String;)J

    move-result-wide p0

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Long;->compare(JJ)I

    move-result p0

    return p0
.end method

.method private markTicketFailed(Lcom/argusoft/sewa/android/app/model/SupportTicketBean;Ljava/lang/String;)V
    .locals 1

    .line 608
    const-string v0, "FAILED"

    iput-object v0, p1, Lcom/argusoft/sewa/android/app/model/SupportTicketBean;->syncState:Ljava/lang/String;

    .line 609
    iput-object p2, p1, Lcom/argusoft/sewa/android/app/model/SupportTicketBean;->syncError:Ljava/lang/String;

    .line 610
    new-instance p2, Lcom/argusoft/sewa/android/app/support/SupportStore$$ExternalSyntheticLambda3;

    invoke-direct {p2, p0, p1}, Lcom/argusoft/sewa/android/app/support/SupportStore$$ExternalSyntheticLambda3;-><init>(Lcom/argusoft/sewa/android/app/support/SupportStore;Lcom/argusoft/sewa/android/app/model/SupportTicketBean;)V

    invoke-static {p2}, Lcom/argusoft/sewa/android/app/support/SupportStore;->quietly(Lcom/argusoft/sewa/android/app/support/SupportStore$SqlWork;)V

    return-void
.end method

.method static now()Ljava/lang/String;
    .locals 3

    .line 655
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd\'T\'HH:mm:ssZ"

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static photoPaths(Lcom/argusoft/sewa/android/app/model/SupportTicketBean;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/argusoft/sewa/android/app/model/SupportTicketBean;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 196
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/SupportTicketBean;->photoPaths:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 197
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0

    .line 200
    :cond_0
    :try_start_0
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    iget-object p0, p0, Lcom/argusoft/sewa/android/app/model/SupportTicketBean;->photoPaths:Ljava/lang/String;

    new-instance v1, Lcom/argusoft/sewa/android/app/support/SupportStore$1;

    invoke-direct {v1}, Lcom/argusoft/sewa/android/app/support/SupportStore$1;-><init>()V

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/support/SupportStore$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-nez p0, :cond_1

    .line 201
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-object p0

    .line 203
    :catch_0
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method private static quietly(Lcom/argusoft/sewa/android/app/support/SupportStore$SqlWork;)V
    .locals 2

    .line 647
    :try_start_0
    invoke-interface {p0}, Lcom/argusoft/sewa/android/app/support/SupportStore$SqlWork;->run()V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 649
    const-string v0, "SupportStore"

    const-string v1, "Database write failed"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private static record(Lcom/argusoft/sewa/android/app/support/SupportStore$SyncResult;Lcom/argusoft/sewa/android/app/support/SupportApi$Failure;)V
    .locals 3

    .line 576
    iget-object v0, p1, Lcom/argusoft/sewa/android/app/support/SupportApi$Failure;->kind:Lcom/argusoft/sewa/android/app/support/SupportApi$Failure$Kind;

    sget-object v1, Lcom/argusoft/sewa/android/app/support/SupportApi$Failure$Kind;->SESSION:Lcom/argusoft/sewa/android/app/support/SupportApi$Failure$Kind;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    .line 577
    iput-boolean v2, p0, Lcom/argusoft/sewa/android/app/support/SupportStore$SyncResult;->sessionEnded:Z

    goto :goto_0

    .line 578
    :cond_0
    iget-object p1, p1, Lcom/argusoft/sewa/android/app/support/SupportApi$Failure;->kind:Lcom/argusoft/sewa/android/app/support/SupportApi$Failure$Kind;

    sget-object v0, Lcom/argusoft/sewa/android/app/support/SupportApi$Failure$Kind;->REFUSED:Lcom/argusoft/sewa/android/app/support/SupportApi$Failure$Kind;

    if-ne p1, v0, :cond_1

    .line 579
    iget p1, p0, Lcom/argusoft/sewa/android/app/support/SupportStore$SyncResult;->refused:I

    add-int/2addr p1, v2

    iput p1, p0, Lcom/argusoft/sewa/android/app/support/SupportStore$SyncResult;->refused:I

    goto :goto_0

    .line 581
    :cond_1
    iput-boolean v2, p0, Lcom/argusoft/sewa/android/app/support/SupportStore$SyncResult;->networkProblem:Z

    :goto_0
    return-void
.end method

.method private refreshDetails(Landroid/content/Context;Lcom/argusoft/sewa/android/app/model/SupportTicketBean;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/argusoft/sewa/android/app/support/SupportApi$Failure;
        }
    .end annotation

    .line 455
    const-string v0, "ticketLocalId"

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/support/SupportStore;->api:Lcom/argusoft/sewa/android/app/support/SupportApi;

    iget-object v2, p2, Lcom/argusoft/sewa/android/app/model/SupportTicketBean;->serverId:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/argusoft/sewa/android/app/support/SupportApi;->comments(J)Ljava/util/List;

    move-result-object v1

    .line 458
    :try_start_0
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/support/SupportStore;->api:Lcom/argusoft/sewa/android/app/support/SupportApi;

    iget-object v3, p2, Lcom/argusoft/sewa/android/app/model/SupportTicketBean;->serverId:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/argusoft/sewa/android/app/support/SupportApi;->attachments(J)Ljava/util/List;

    move-result-object v2
    :try_end_0
    .catch Lcom/argusoft/sewa/android/app/support/SupportApi$Failure; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 460
    iget-object v3, v2, Lcom/argusoft/sewa/android/app/support/SupportApi$Failure;->kind:Lcom/argusoft/sewa/android/app/support/SupportApi$Failure$Kind;

    sget-object v4, Lcom/argusoft/sewa/android/app/support/SupportApi$Failure$Kind;->REFUSED:Lcom/argusoft/sewa/android/app/support/SupportApi$Failure$Kind;

    if-ne v3, v4, :cond_a

    .line 463
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 467
    :goto_0
    :try_start_1
    iget-object v3, p0, Lcom/argusoft/sewa/android/app/support/SupportStore;->comments:Lcom/j256/ormlite/dao/Dao;

    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/model/SupportTicketBean;->getId()Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v0, v4}, Lcom/j256/ormlite/dao/Dao;->queryForEq(Ljava/lang/String;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_2

    const-string v5, "SYNCED"

    if-eqz v4, :cond_2

    :try_start_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/argusoft/sewa/android/app/model/SupportCommentBean;

    .line 468
    iget-object v6, v4, Lcom/argusoft/sewa/android/app/model/SupportCommentBean;->syncState:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 469
    iget-object v5, v4, Lcom/argusoft/sewa/android/app/model/SupportCommentBean;->voicePath:Ljava/lang/String;

    if-eqz v5, :cond_1

    .line 472
    new-instance v5, Ljava/io/File;

    iget-object v6, v4, Lcom/argusoft/sewa/android/app/model/SupportCommentBean;->voicePath:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 474
    :cond_1
    iget-object v5, p0, Lcom/argusoft/sewa/android/app/support/SupportStore;->comments:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v5, v4}, Lcom/j256/ormlite/dao/Dao;->delete(Ljava/lang/Object;)I

    goto :goto_1

    :cond_2
    if-eqz v1, :cond_3

    .line 478
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/argusoft/sewa/android/app/support/SupportComment;

    .line 479
    new-instance v4, Lcom/argusoft/sewa/android/app/model/SupportCommentBean;

    invoke-direct {v4}, Lcom/argusoft/sewa/android/app/model/SupportCommentBean;-><init>()V

    .line 480
    iget-object v6, v3, Lcom/argusoft/sewa/android/app/support/SupportComment;->id:Ljava/lang/Long;

    iput-object v6, v4, Lcom/argusoft/sewa/android/app/model/SupportCommentBean;->serverId:Ljava/lang/Long;

    .line 481
    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/model/SupportTicketBean;->getId()Ljava/lang/Integer;

    move-result-object v6

    iput-object v6, v4, Lcom/argusoft/sewa/android/app/model/SupportCommentBean;->ticketLocalId:Ljava/lang/Integer;

    .line 482
    iget-object v6, p2, Lcom/argusoft/sewa/android/app/model/SupportTicketBean;->ownerUserId:Ljava/lang/Long;

    iput-object v6, v4, Lcom/argusoft/sewa/android/app/model/SupportCommentBean;->ownerUserId:Ljava/lang/Long;

    .line 483
    iget-object v6, v3, Lcom/argusoft/sewa/android/app/support/SupportComment;->authorType:Ljava/lang/String;

    iput-object v6, v4, Lcom/argusoft/sewa/android/app/model/SupportCommentBean;->authorType:Ljava/lang/String;

    .line 484
    iget-boolean v6, v3, Lcom/argusoft/sewa/android/app/support/SupportComment;->mine:Z

    iput-boolean v6, v4, Lcom/argusoft/sewa/android/app/model/SupportCommentBean;->mine:Z

    .line 485
    iget-object v6, v3, Lcom/argusoft/sewa/android/app/support/SupportComment;->body:Ljava/lang/String;

    iput-object v6, v4, Lcom/argusoft/sewa/android/app/model/SupportCommentBean;->body:Ljava/lang/String;

    .line 486
    iget-object v3, v3, Lcom/argusoft/sewa/android/app/support/SupportComment;->createdAt:Ljava/lang/String;

    iput-object v3, v4, Lcom/argusoft/sewa/android/app/model/SupportCommentBean;->createdAt:Ljava/lang/String;

    .line 487
    iput-object v5, v4, Lcom/argusoft/sewa/android/app/model/SupportCommentBean;->syncState:Ljava/lang/String;

    .line 488
    iget-object v3, p0, Lcom/argusoft/sewa/android/app/support/SupportStore;->comments:Lcom/j256/ormlite/dao/Dao;

    new-instance v6, Lcom/argusoft/sewa/android/app/support/SupportStore$$ExternalSyntheticLambda0;

    invoke-direct {v6, v4}, Lcom/argusoft/sewa/android/app/support/SupportStore$$ExternalSyntheticLambda0;-><init>(Lcom/argusoft/sewa/android/app/model/SupportCommentBean;)V

    invoke-direct {p0, v3, v4, v6}, Lcom/argusoft/sewa/android/app/support/SupportStore;->insert(Lcom/j256/ormlite/dao/Dao;Ljava/lang/Object;Lcom/argusoft/sewa/android/app/support/SupportStore$IdSetter;)V

    goto :goto_2

    .line 493
    :cond_3
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 494
    iget-object v3, p0, Lcom/argusoft/sewa/android/app/support/SupportStore;->attachments:Lcom/j256/ormlite/dao/Dao;

    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/model/SupportTicketBean;->getId()Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v0, v4}, Lcom/j256/ormlite/dao/Dao;->queryForEq(Ljava/lang/String;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/argusoft/sewa/android/app/model/SupportAttachmentBean;

    .line 495
    iget-object v4, v3, Lcom/argusoft/sewa/android/app/model/SupportAttachmentBean;->serverId:Ljava/lang/Long;

    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 497
    :cond_4
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :catch_1
    :cond_5
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/argusoft/sewa/android/app/support/SupportAttachment;

    .line 498
    iget-object v3, v2, Lcom/argusoft/sewa/android/app/support/SupportAttachment;->id:Ljava/lang/Long;

    invoke-interface {v1, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/argusoft/sewa/android/app/model/SupportAttachmentBean;

    if-nez v3, :cond_6

    .line 500
    new-instance v3, Lcom/argusoft/sewa/android/app/model/SupportAttachmentBean;

    invoke-direct {v3}, Lcom/argusoft/sewa/android/app/model/SupportAttachmentBean;-><init>()V

    .line 501
    iget-object v4, v2, Lcom/argusoft/sewa/android/app/support/SupportAttachment;->id:Ljava/lang/Long;

    iput-object v4, v3, Lcom/argusoft/sewa/android/app/model/SupportAttachmentBean;->serverId:Ljava/lang/Long;

    .line 502
    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/model/SupportTicketBean;->getId()Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, v3, Lcom/argusoft/sewa/android/app/model/SupportAttachmentBean;->ticketLocalId:Ljava/lang/Integer;

    .line 503
    iget-object v4, p2, Lcom/argusoft/sewa/android/app/model/SupportTicketBean;->ownerUserId:Ljava/lang/Long;

    iput-object v4, v3, Lcom/argusoft/sewa/android/app/model/SupportAttachmentBean;->ownerUserId:Ljava/lang/Long;

    .line 505
    :cond_6
    iget-object v4, v2, Lcom/argusoft/sewa/android/app/support/SupportAttachment;->attachmentType:Ljava/lang/String;

    iput-object v4, v3, Lcom/argusoft/sewa/android/app/model/SupportAttachmentBean;->attachmentType:Ljava/lang/String;

    .line 506
    iget-object v4, v2, Lcom/argusoft/sewa/android/app/support/SupportAttachment;->fileName:Ljava/lang/String;

    iput-object v4, v3, Lcom/argusoft/sewa/android/app/model/SupportAttachmentBean;->fileName:Ljava/lang/String;

    .line 507
    iget-wide v4, v2, Lcom/argusoft/sewa/android/app/support/SupportAttachment;->sizeBytes:J

    iput-wide v4, v3, Lcom/argusoft/sewa/android/app/model/SupportAttachmentBean;->sizeBytes:J

    .line 508
    iget-object v4, v2, Lcom/argusoft/sewa/android/app/support/SupportAttachment;->durationSeconds:Ljava/lang/Integer;

    iput-object v4, v3, Lcom/argusoft/sewa/android/app/model/SupportAttachmentBean;->durationSeconds:Ljava/lang/Integer;

    .line 509
    iget-object v2, v2, Lcom/argusoft/sewa/android/app/support/SupportAttachment;->createdAt:Ljava/lang/String;

    iput-object v2, v3, Lcom/argusoft/sewa/android/app/model/SupportAttachmentBean;->createdAt:Ljava/lang/String;

    .line 510
    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/model/SupportAttachmentBean;->getId()Ljava/lang/Integer;

    move-result-object v2

    if-nez v2, :cond_7

    .line 511
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/support/SupportStore;->attachments:Lcom/j256/ormlite/dao/Dao;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lcom/argusoft/sewa/android/app/support/SupportStore$$ExternalSyntheticLambda4;

    invoke-direct {v4, v3}, Lcom/argusoft/sewa/android/app/support/SupportStore$$ExternalSyntheticLambda4;-><init>(Lcom/argusoft/sewa/android/app/model/SupportAttachmentBean;)V

    invoke-direct {p0, v2, v3, v4}, Lcom/argusoft/sewa/android/app/support/SupportStore;->insert(Lcom/j256/ormlite/dao/Dao;Ljava/lang/Object;Lcom/argusoft/sewa/android/app/support/SupportStore$IdSetter;)V

    goto :goto_5

    .line 513
    :cond_7
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/support/SupportStore;->attachments:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v2, v3}, Lcom/j256/ormlite/dao/Dao;->update(Ljava/lang/Object;)I

    .line 515
    :goto_5
    iget-wide v4, v3, Lcom/argusoft/sewa/android/app/model/SupportAttachmentBean;->sizeBytes:J

    const-wide/32 v6, 0x300000

    cmp-long v2, v4, v6

    if-gtz v2, :cond_5

    invoke-static {v3}, Lcom/argusoft/sewa/android/app/support/SupportStore;->hasCopy(Lcom/argusoft/sewa/android/app/model/SupportAttachmentBean;)Z

    move-result v2
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_2

    if-nez v2, :cond_5

    .line 517
    :try_start_3
    invoke-virtual {p0, p1, p2, v3}, Lcom/argusoft/sewa/android/app/support/SupportStore;->download(Landroid/content/Context;Lcom/argusoft/sewa/android/app/model/SupportTicketBean;Lcom/argusoft/sewa/android/app/model/SupportAttachmentBean;)Ljava/io/File;
    :try_end_3
    .catch Lcom/argusoft/sewa/android/app/support/SupportApi$Failure; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/sql/SQLException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_4

    .line 523
    :cond_8
    :try_start_4
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/model/SupportAttachmentBean;

    .line 524
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/support/SupportStore;->attachments:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v1, v0}, Lcom/j256/ormlite/dao/Dao;->delete(Ljava/lang/Object;)I

    goto :goto_6

    .line 526
    :cond_9
    iget-object p1, p2, Lcom/argusoft/sewa/android/app/model/SupportTicketBean;->statusChangedAt:Ljava/lang/String;

    iput-object p1, p2, Lcom/argusoft/sewa/android/app/model/SupportTicketBean;->detailsFetchedFor:Ljava/lang/String;

    .line 527
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/support/SupportStore;->tickets:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {p1, p2}, Lcom/j256/ormlite/dao/Dao;->update(Ljava/lang/Object;)I
    :try_end_4
    .catch Ljava/sql/SQLException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_7

    :catch_2
    move-exception p1

    .line 529
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Could not save messages for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p2, Lcom/argusoft/sewa/android/app/model/SupportTicketBean;->ticketNumber:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "SupportStore"

    invoke-static {v0, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_7
    return-void

    .line 461
    :cond_a
    throw v2
.end method

.method private static send(Lcom/argusoft/sewa/android/app/support/SupportStore$SyncResult;Lcom/argusoft/sewa/android/app/support/SupportStore$Send;)Z
    .locals 1

    const/4 v0, 0x1

    .line 566
    :try_start_0
    invoke-interface {p1}, Lcom/argusoft/sewa/android/app/support/SupportStore$Send;->run()V

    .line 567
    iget p1, p0, Lcom/argusoft/sewa/android/app/support/SupportStore$SyncResult;->sent:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/argusoft/sewa/android/app/support/SupportStore$SyncResult;->sent:I
    :try_end_0
    .catch Lcom/argusoft/sewa/android/app/support/SupportApi$Failure; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception p1

    .line 570
    invoke-static {p0, p1}, Lcom/argusoft/sewa/android/app/support/SupportStore;->record(Lcom/argusoft/sewa/android/app/support/SupportStore$SyncResult;Lcom/argusoft/sewa/android/app/support/SupportApi$Failure;)V

    .line 571
    iget-object p0, p1, Lcom/argusoft/sewa/android/app/support/SupportApi$Failure;->kind:Lcom/argusoft/sewa/android/app/support/SupportApi$Failure$Kind;

    sget-object p1, Lcom/argusoft/sewa/android/app/support/SupportApi$Failure$Kind;->REFUSED:Lcom/argusoft/sewa/android/app/support/SupportApi$Failure$Kind;

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public attachments(I)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/model/SupportAttachmentBean;",
            ">;"
        }
    .end annotation

    .line 120
    :try_start_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/support/SupportStore;->attachments:Lcom/j256/ormlite/dao/Dao;

    const-string v1, "ticketLocalId"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/j256/ormlite/dao/Dao;->queryForEq(Ljava/lang/String;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 122
    :catch_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1
.end method

.method public comments(I)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/model/SupportCommentBean;",
            ">;"
        }
    .end annotation

    .line 108
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 110
    :try_start_0
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/support/SupportStore;->comments:Lcom/j256/ormlite/dao/Dao;

    const-string v2, "ticketLocalId"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v1, v2, p1}, Lcom/j256/ormlite/dao/Dao;->queryForEq(Ljava/lang/String;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 112
    const-string v1, "SupportStore"

    const-string v2, "Could not read messages"

    invoke-static {v1, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 114
    :goto_0
    new-instance p1, Lcom/argusoft/sewa/android/app/support/SupportStore$$ExternalSyntheticLambda7;

    invoke-direct {p1}, Lcom/argusoft/sewa/android/app/support/SupportStore$$ExternalSyntheticLambda7;-><init>()V

    invoke-static {v0, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object v0
.end method

.method public discard(Lcom/argusoft/sewa/android/app/model/SupportTicketBean;)V
    .locals 3

    .line 615
    iget-object v0, p1, Lcom/argusoft/sewa/android/app/model/SupportTicketBean;->voicePath:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 617
    new-instance v0, Ljava/io/File;

    iget-object v1, p1, Lcom/argusoft/sewa/android/app/model/SupportTicketBean;->voicePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 619
    :cond_0
    invoke-static {p1}, Lcom/argusoft/sewa/android/app/support/SupportStore;->photoPaths(Lcom/argusoft/sewa/android/app/model/SupportTicketBean;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 621
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 623
    :cond_1
    new-instance v0, Lcom/argusoft/sewa/android/app/support/SupportStore$$ExternalSyntheticLambda12;

    invoke-direct {v0, p0, p1}, Lcom/argusoft/sewa/android/app/support/SupportStore$$ExternalSyntheticLambda12;-><init>(Lcom/argusoft/sewa/android/app/support/SupportStore;Lcom/argusoft/sewa/android/app/model/SupportTicketBean;)V

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/support/SupportStore;->quietly(Lcom/argusoft/sewa/android/app/support/SupportStore$SqlWork;)V

    return-void
.end method

.method public download(Landroid/content/Context;Lcom/argusoft/sewa/android/app/model/SupportTicketBean;Lcom/argusoft/sewa/android/app/model/SupportAttachmentBean;)Ljava/io/File;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/argusoft/sewa/android/app/support/SupportApi$Failure;
        }
    .end annotation

    .line 541
    invoke-static {p3}, Lcom/argusoft/sewa/android/app/support/SupportStore;->hasCopy(Lcom/argusoft/sewa/android/app/model/SupportAttachmentBean;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 542
    new-instance p1, Ljava/io/File;

    iget-object p2, p3, Lcom/argusoft/sewa/android/app/model/SupportAttachmentBean;->localPath:Ljava/lang/String;

    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object p1

    .line 544
    :cond_0
    new-instance v0, Lcom/argusoft/sewa/android/app/support/SupportAttachment;

    invoke-direct {v0}, Lcom/argusoft/sewa/android/app/support/SupportAttachment;-><init>()V

    .line 545
    iget-object v1, p3, Lcom/argusoft/sewa/android/app/model/SupportAttachmentBean;->serverId:Ljava/lang/Long;

    iput-object v1, v0, Lcom/argusoft/sewa/android/app/support/SupportAttachment;->id:Ljava/lang/Long;

    .line 546
    iget-object v1, p3, Lcom/argusoft/sewa/android/app/model/SupportAttachmentBean;->attachmentType:Ljava/lang/String;

    iput-object v1, v0, Lcom/argusoft/sewa/android/app/support/SupportAttachment;->attachmentType:Ljava/lang/String;

    .line 547
    iget-object v1, p3, Lcom/argusoft/sewa/android/app/model/SupportAttachmentBean;->fileName:Ljava/lang/String;

    iput-object v1, v0, Lcom/argusoft/sewa/android/app/support/SupportAttachment;->fileName:Ljava/lang/String;

    .line 548
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/support/SupportStore;->api:Lcom/argusoft/sewa/android/app/support/SupportApi;

    iget-object p2, p2, Lcom/argusoft/sewa/android/app/model/SupportTicketBean;->serverId:Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, p1, v2, v3, v0}, Lcom/argusoft/sewa/android/app/support/SupportApi;->download(Landroid/content/Context;JLcom/argusoft/sewa/android/app/support/SupportAttachment;)Ljava/io/File;

    move-result-object p1

    .line 549
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p3, Lcom/argusoft/sewa/android/app/model/SupportAttachmentBean;->localPath:Ljava/lang/String;

    .line 550
    new-instance p2, Lcom/argusoft/sewa/android/app/support/SupportStore$$ExternalSyntheticLambda2;

    invoke-direct {p2, p0, p3}, Lcom/argusoft/sewa/android/app/support/SupportStore$$ExternalSyntheticLambda2;-><init>(Lcom/argusoft/sewa/android/app/support/SupportStore;Lcom/argusoft/sewa/android/app/model/SupportAttachmentBean;)V

    invoke-static {p2}, Lcom/argusoft/sewa/android/app/support/SupportStore;->quietly(Lcom/argusoft/sewa/android/app/support/SupportStore$SqlWork;)V

    return-object p1
.end method

.method synthetic lambda$discard$10$com-argusoft-sewa-android-app-support-SupportStore(Lcom/argusoft/sewa/android/app/model/SupportTicketBean;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 623
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/support/SupportStore;->tickets:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v0, p1}, Lcom/j256/ormlite/dao/Dao;->delete(Ljava/lang/Object;)I

    return-void
.end method

.method synthetic lambda$download$8$com-argusoft-sewa-android-app-support-SupportStore(Lcom/argusoft/sewa/android/app/model/SupportAttachmentBean;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 550
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/support/SupportStore;->attachments:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v0, p1}, Lcom/j256/ormlite/dao/Dao;->update(Ljava/lang/Object;)I

    return-void
.end method

.method synthetic lambda$markTicketFailed$9$com-argusoft-sewa-android-app-support-SupportStore(Lcom/argusoft/sewa/android/app/model/SupportTicketBean;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 610
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/support/SupportStore;->tickets:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v0, p1}, Lcom/j256/ormlite/dao/Dao;->update(Ljava/lang/Object;)I

    return-void
.end method

.method synthetic lambda$pushAnswer$3$com-argusoft-sewa-android-app-support-SupportStore(Lcom/argusoft/sewa/android/app/model/SupportActionBean;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 348
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/support/SupportStore;->actions:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v0, p1}, Lcom/j256/ormlite/dao/Dao;->delete(Ljava/lang/Object;)I

    return-void
.end method

.method synthetic lambda$pushComment$2$com-argusoft-sewa-android-app-support-SupportStore(Lcom/argusoft/sewa/android/app/model/SupportCommentBean;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 323
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/support/SupportStore;->comments:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v0, p1}, Lcom/j256/ormlite/dao/Dao;->update(Ljava/lang/Object;)I

    return-void
.end method

.method synthetic lambda$refreshOne$7$com-argusoft-sewa-android-app-support-SupportStore(Lcom/argusoft/sewa/android/app/model/SupportTicketBean;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 449
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/support/SupportStore;->tickets:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v0, p1}, Lcom/j256/ormlite/dao/Dao;->update(Ljava/lang/Object;)I

    return-void
.end method

.method synthetic lambda$sync$4$com-argusoft-sewa-android-app-support-SupportStore(Landroid/content/Context;Lcom/argusoft/sewa/android/app/model/SupportTicketBean;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/argusoft/sewa/android/app/support/SupportApi$Failure;
        }
    .end annotation

    .line 375
    invoke-virtual {p0, p1, p2}, Lcom/argusoft/sewa/android/app/support/SupportStore;->pushTicket(Landroid/content/Context;Lcom/argusoft/sewa/android/app/model/SupportTicketBean;)Ljava/lang/String;

    return-void
.end method

.method synthetic lambda$sync$5$com-argusoft-sewa-android-app-support-SupportStore(Lcom/argusoft/sewa/android/app/model/SupportCommentBean;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/argusoft/sewa/android/app/support/SupportApi$Failure;
        }
    .end annotation

    .line 382
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/support/SupportStore;->pushComment(Lcom/argusoft/sewa/android/app/model/SupportCommentBean;)V

    return-void
.end method

.method synthetic lambda$sync$6$com-argusoft-sewa-android-app-support-SupportStore(Lcom/argusoft/sewa/android/app/model/SupportActionBean;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/argusoft/sewa/android/app/support/SupportApi$Failure;
        }
    .end annotation

    .line 388
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/support/SupportStore;->pushAnswer(Lcom/argusoft/sewa/android/app/model/SupportActionBean;)V

    return-void
.end method

.method public pendingAction(I)Lcom/argusoft/sewa/android/app/model/SupportActionBean;
    .locals 3

    const/4 v0, 0x0

    .line 129
    :try_start_0
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/support/SupportStore;->actions:Lcom/j256/ormlite/dao/Dao;

    const-string v2, "ticketLocalId"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v1, v2, p1}, Lcom/j256/ormlite/dao/Dao;->queryForEq(Ljava/lang/String;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 130
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/argusoft/sewa/android/app/model/SupportActionBean;
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, p1

    :catch_0
    :goto_0
    return-object v0
.end method

.method public declared-synchronized pull(Landroid/content/Context;Ljava/lang/Long;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/argusoft/sewa/android/app/support/SupportApi$Failure;
        }
    .end annotation

    monitor-enter p0

    if-eqz p2, :cond_b

    .line 406
    :try_start_0
    invoke-static {p1}, Lcom/argusoft/sewa/android/app/support/SupportApi;->isOnline(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_5

    .line 409
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/support/SupportStore;->api:Lcom/argusoft/sewa/android/app/support/SupportApi;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/support/SupportApi;->mine()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    .line 411
    monitor-exit p0

    return-void

    .line 414
    :cond_1
    :try_start_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/argusoft/sewa/android/app/support/SupportTicket;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 416
    :try_start_2
    iget-object v4, v3, Lcom/argusoft/sewa/android/app/support/SupportTicket;->id:Ljava/lang/Long;

    invoke-direct {p0, p2, v4}, Lcom/argusoft/sewa/android/app/support/SupportStore;->byServerId(Ljava/lang/Long;Ljava/lang/Long;)Lcom/argusoft/sewa/android/app/model/SupportTicketBean;

    move-result-object v4

    if-nez v4, :cond_3

    .line 418
    new-instance v4, Lcom/argusoft/sewa/android/app/model/SupportTicketBean;

    invoke-direct {v4}, Lcom/argusoft/sewa/android/app/model/SupportTicketBean;-><init>()V

    .line 419
    iput-object p2, v4, Lcom/argusoft/sewa/android/app/model/SupportTicketBean;->ownerUserId:Ljava/lang/Long;

    .line 420
    const-string v5, "SYNCED"

    iput-object v5, v4, Lcom/argusoft/sewa/android/app/model/SupportTicketBean;->syncState:Ljava/lang/String;

    .line 421
    invoke-static {v4, v3}, Lcom/argusoft/sewa/android/app/support/SupportStore;->apply(Lcom/argusoft/sewa/android/app/model/SupportTicketBean;Lcom/argusoft/sewa/android/app/support/SupportTicket;)V

    .line 422
    iget-object v5, p0, Lcom/argusoft/sewa/android/app/support/SupportStore;->tickets:Lcom/j256/ormlite/dao/Dao;

    new-instance v6, Lcom/argusoft/sewa/android/app/support/SupportStore$$ExternalSyntheticLambda6;

    invoke-direct {v6, v4}, Lcom/argusoft/sewa/android/app/support/SupportStore$$ExternalSyntheticLambda6;-><init>(Lcom/argusoft/sewa/android/app/model/SupportTicketBean;)V

    invoke-direct {p0, v5, v4, v6}, Lcom/argusoft/sewa/android/app/support/SupportStore;->insert(Lcom/j256/ormlite/dao/Dao;Ljava/lang/Object;Lcom/argusoft/sewa/android/app/support/SupportStore$IdSetter;)V

    goto :goto_1

    .line 423
    :cond_3
    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/model/SupportTicketBean;->getId()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/argusoft/sewa/android/app/support/SupportStore;->pendingAction(I)Lcom/argusoft/sewa/android/app/model/SupportActionBean;

    move-result-object v5

    if-nez v5, :cond_4

    .line 425
    invoke-static {v4, v3}, Lcom/argusoft/sewa/android/app/support/SupportStore;->apply(Lcom/argusoft/sewa/android/app/model/SupportTicketBean;Lcom/argusoft/sewa/android/app/support/SupportTicket;)V

    .line 426
    iget-object v5, p0, Lcom/argusoft/sewa/android/app/support/SupportStore;->tickets:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v5, v4}, Lcom/j256/ormlite/dao/Dao;->update(Ljava/lang/Object;)I

    .line 428
    :cond_4
    :goto_1
    iget-object v5, v4, Lcom/argusoft/sewa/android/app/model/SupportTicketBean;->detailsFetchedFor:Ljava/lang/String;

    const/4 v6, 0x1

    if-eqz v5, :cond_6

    iget-object v5, v4, Lcom/argusoft/sewa/android/app/model/SupportTicketBean;->detailsFetchedFor:Ljava/lang/String;

    iget-object v7, v3, Lcom/argusoft/sewa/android/app/support/SupportTicket;->statusChangedAt:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    goto :goto_2

    :cond_5
    const/4 v5, 0x0

    goto :goto_3

    :cond_6
    :goto_2
    const/4 v5, 0x1

    .line 429
    :goto_3
    iget-object v7, v3, Lcom/argusoft/sewa/android/app/support/SupportTicket;->status:Ljava/lang/String;

    if-eqz v7, :cond_8

    const-string v7, "CLOSED,REJECTED,CANCELLED"

    iget-object v8, v3, Lcom/argusoft/sewa/android/app/support/SupportTicket;->status:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_7

    goto :goto_4

    :cond_7
    const/4 v6, 0x0

    :cond_8
    :goto_4
    if-nez v5, :cond_9

    if-eqz v6, :cond_2

    :cond_9
    const/16 v5, 0xf

    if-ge v2, v5, :cond_2

    .line 431
    invoke-direct {p0, p1, v4}, Lcom/argusoft/sewa/android/app/support/SupportStore;->refreshDetails(Landroid/content/Context;Lcom/argusoft/sewa/android/app/model/SupportTicketBean;)V
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception v4

    .line 435
    :try_start_3
    const-string v5, "SupportStore"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Could not save request "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v3, Lcom/argusoft/sewa/android/app/support/SupportTicket;->ticketNumber:Ljava/lang/String;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    .line 438
    :cond_a
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p1

    .line 407
    :cond_b
    :goto_5
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized pushAnswer(Lcom/argusoft/sewa/android/app/model/SupportActionBean;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/argusoft/sewa/android/app/support/SupportApi$Failure;
        }
    .end annotation

    monitor-enter p0

    .line 333
    :try_start_0
    iget-object v0, p1, Lcom/argusoft/sewa/android/app/model/SupportActionBean;->ticketLocalId:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/support/SupportStore;->ticket(I)Lcom/argusoft/sewa/android/app/model/SupportTicketBean;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 334
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/SupportTicketBean;->isOnServer()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    goto :goto_2

    .line 338
    :cond_0
    :try_start_1
    const-string v1, "FIXED"

    iget-object v2, p1, Lcom/argusoft/sewa/android/app/model/SupportActionBean;->action:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 339
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/support/SupportStore;->api:Lcom/argusoft/sewa/android/app/support/SupportApi;

    iget-object v2, v0, Lcom/argusoft/sewa/android/app/model/SupportTicketBean;->serverId:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/argusoft/sewa/android/app/support/SupportApi;->fixed(J)Lcom/argusoft/sewa/android/app/support/SupportTicket;

    move-result-object v1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/support/SupportStore;->api:Lcom/argusoft/sewa/android/app/support/SupportApi;

    iget-object v2, v0, Lcom/argusoft/sewa/android/app/model/SupportTicketBean;->serverId:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-object v4, p1, Lcom/argusoft/sewa/android/app/model/SupportActionBean;->reason:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4}, Lcom/argusoft/sewa/android/app/support/SupportApi;->notFixed(JLjava/lang/String;)Lcom/argusoft/sewa/android/app/support/SupportTicket;

    move-result-object v1

    .line 340
    :goto_0
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/support/SupportStore;->actions:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v2, p1}, Lcom/j256/ormlite/dao/Dao;->delete(Ljava/lang/Object;)I

    if-eqz v1, :cond_2

    .line 342
    invoke-static {v0, v1}, Lcom/argusoft/sewa/android/app/support/SupportStore;->apply(Lcom/argusoft/sewa/android/app/model/SupportTicketBean;Lcom/argusoft/sewa/android/app/support/SupportTicket;)V

    .line 343
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/support/SupportStore;->tickets:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v1, v0}, Lcom/j256/ormlite/dao/Dao;->update(Ljava/lang/Object;)I
    :try_end_1
    .catch Lcom/argusoft/sewa/android/app/support/SupportApi$Failure; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 352
    :try_start_2
    const-string v0, "SupportStore"

    const-string v1, "Could not save the answer\'s state"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 354
    :cond_2
    :goto_1
    monitor-exit p0

    return-void

    :catch_1
    move-exception v0

    .line 346
    :try_start_3
    iget-object v1, v0, Lcom/argusoft/sewa/android/app/support/SupportApi$Failure;->kind:Lcom/argusoft/sewa/android/app/support/SupportApi$Failure$Kind;

    sget-object v2, Lcom/argusoft/sewa/android/app/support/SupportApi$Failure$Kind;->REFUSED:Lcom/argusoft/sewa/android/app/support/SupportApi$Failure$Kind;

    if-ne v1, v2, :cond_3

    .line 348
    new-instance v1, Lcom/argusoft/sewa/android/app/support/SupportStore$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, p1}, Lcom/argusoft/sewa/android/app/support/SupportStore$$ExternalSyntheticLambda5;-><init>(Lcom/argusoft/sewa/android/app/support/SupportStore;Lcom/argusoft/sewa/android/app/model/SupportActionBean;)V

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/support/SupportStore;->quietly(Lcom/argusoft/sewa/android/app/support/SupportStore$SqlWork;)V

    .line 350
    :cond_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 335
    :cond_4
    :goto_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p1
.end method

.method public declared-synchronized pushComment(Lcom/argusoft/sewa/android/app/model/SupportCommentBean;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/argusoft/sewa/android/app/support/SupportApi$Failure;
        }
    .end annotation

    monitor-enter p0

    .line 300
    :try_start_0
    iget-object v0, p1, Lcom/argusoft/sewa/android/app/model/SupportCommentBean;->ticketLocalId:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/support/SupportStore;->ticket(I)Lcom/argusoft/sewa/android/app/model/SupportTicketBean;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 301
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/SupportTicketBean;->isOnServer()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    goto :goto_2

    .line 305
    :cond_0
    :try_start_1
    iget-object v1, p1, Lcom/argusoft/sewa/android/app/model/SupportCommentBean;->voicePath:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 306
    new-instance v1, Ljava/io/File;

    iget-object v2, p1, Lcom/argusoft/sewa/android/app/model/SupportCommentBean;->voicePath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 307
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 308
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/support/SupportStore;->api:Lcom/argusoft/sewa/android/app/support/SupportApi;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/model/SupportTicketBean;->serverId:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4, v1}, Lcom/argusoft/sewa/android/app/support/SupportApi;->voiceReply(JLjava/io/File;)V

    goto :goto_0

    .line 310
    :cond_1
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/support/SupportStore;->comments:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v0, p1}, Lcom/j256/ormlite/dao/Dao;->delete(Ljava/lang/Object;)I
    :try_end_1
    .catch Lcom/argusoft/sewa/android/app/support/SupportApi$Failure; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 311
    monitor-exit p0

    return-void

    .line 314
    :cond_2
    :try_start_2
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/support/SupportStore;->api:Lcom/argusoft/sewa/android/app/support/SupportApi;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/model/SupportTicketBean;->serverId:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-object v0, p1, Lcom/argusoft/sewa/android/app/model/SupportCommentBean;->body:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v0}, Lcom/argusoft/sewa/android/app/support/SupportApi;->reply(JLjava/lang/String;)V

    .line 316
    :goto_0
    const-string v0, "SYNCED"

    iput-object v0, p1, Lcom/argusoft/sewa/android/app/model/SupportCommentBean;->syncState:Ljava/lang/String;

    const/4 v0, 0x0

    .line 317
    iput-object v0, p1, Lcom/argusoft/sewa/android/app/model/SupportCommentBean;->syncError:Ljava/lang/String;

    .line 318
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/support/SupportStore;->comments:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v0, p1}, Lcom/j256/ormlite/dao/Dao;->update(Ljava/lang/Object;)I
    :try_end_2
    .catch Lcom/argusoft/sewa/android/app/support/SupportApi$Failure; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 327
    :try_start_3
    const-string v0, "SupportStore"

    const-string v1, "Could not save the reply\'s state"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 329
    :goto_1
    monitor-exit p0

    return-void

    :catch_1
    move-exception v0

    .line 320
    :try_start_4
    iget-object v1, v0, Lcom/argusoft/sewa/android/app/support/SupportApi$Failure;->kind:Lcom/argusoft/sewa/android/app/support/SupportApi$Failure$Kind;

    sget-object v2, Lcom/argusoft/sewa/android/app/support/SupportApi$Failure$Kind;->REFUSED:Lcom/argusoft/sewa/android/app/support/SupportApi$Failure$Kind;

    if-ne v1, v2, :cond_3

    .line 321
    const-string v1, "FAILED"

    iput-object v1, p1, Lcom/argusoft/sewa/android/app/model/SupportCommentBean;->syncState:Ljava/lang/String;

    .line 322
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/support/SupportApi$Failure;->getMessage()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/argusoft/sewa/android/app/model/SupportCommentBean;->syncError:Ljava/lang/String;

    .line 323
    new-instance v1, Lcom/argusoft/sewa/android/app/support/SupportStore$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0, p1}, Lcom/argusoft/sewa/android/app/support/SupportStore$$ExternalSyntheticLambda8;-><init>(Lcom/argusoft/sewa/android/app/support/SupportStore;Lcom/argusoft/sewa/android/app/model/SupportCommentBean;)V

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/support/SupportStore;->quietly(Lcom/argusoft/sewa/android/app/support/SupportStore$SqlWork;)V

    .line 325
    :cond_3
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 302
    :cond_4
    :goto_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw p1
.end method

.method public declared-synchronized pushTicket(Landroid/content/Context;Lcom/argusoft/sewa/android/app/model/SupportTicketBean;)Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/argusoft/sewa/android/app/support/SupportApi$Failure;
        }
    .end annotation

    monitor-enter p0

    .line 275
    :try_start_0
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 276
    invoke-static {p2}, Lcom/argusoft/sewa/android/app/support/SupportStore;->photoPaths(Lcom/argusoft/sewa/android/app/model/SupportTicketBean;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 277
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 279
    :cond_0
    iget-object v0, p2, Lcom/argusoft/sewa/android/app/model/SupportTicketBean;->voicePath:Ljava/lang/String;

    const/4 v7, 0x0

    if-nez v0, :cond_1

    move-object v5, v7

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/io/File;

    iget-object v1, p2, Lcom/argusoft/sewa/android/app/model/SupportTicketBean;->voicePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v5, v0

    .line 281
    :goto_1
    :try_start_1
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/support/SupportStore;->api:Lcom/argusoft/sewa/android/app/support/SupportApi;

    iget-object v2, p2, Lcom/argusoft/sewa/android/app/model/SupportTicketBean;->idempotencyKey:Ljava/lang/String;

    iget-object v3, p2, Lcom/argusoft/sewa/android/app/model/SupportTicketBean;->topic:Ljava/lang/String;

    iget-object v4, p2, Lcom/argusoft/sewa/android/app/model/SupportTicketBean;->description:Ljava/lang/String;

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Lcom/argusoft/sewa/android/app/support/SupportApi;->raise(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/util/List;)Lcom/argusoft/sewa/android/app/support/SupportTicket;

    move-result-object p1

    .line 282
    invoke-static {p2, p1}, Lcom/argusoft/sewa/android/app/support/SupportStore;->apply(Lcom/argusoft/sewa/android/app/model/SupportTicketBean;Lcom/argusoft/sewa/android/app/support/SupportTicket;)V

    .line 283
    const-string p1, "SYNCED"

    iput-object p1, p2, Lcom/argusoft/sewa/android/app/model/SupportTicketBean;->syncState:Ljava/lang/String;

    .line 284
    iput-object v7, p2, Lcom/argusoft/sewa/android/app/model/SupportTicketBean;->syncError:Ljava/lang/String;

    .line 285
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/support/SupportStore;->tickets:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {p1, p2}, Lcom/j256/ormlite/dao/Dao;->update(Ljava/lang/Object;)I

    .line 286
    iget-object p1, p2, Lcom/argusoft/sewa/android/app/model/SupportTicketBean;->ticketNumber:Ljava/lang/String;
    :try_end_1
    .catch Lcom/argusoft/sewa/android/app/support/SupportApi$Failure; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :catch_0
    move-exception p1

    .line 293
    :try_start_2
    const-string v0, "SupportStore"

    const-string v1, "Sent, but could not save the reply"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 294
    iget-object p1, p2, Lcom/argusoft/sewa/android/app/model/SupportTicketBean;->ticketNumber:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object p1

    :catch_1
    move-exception p1

    .line 288
    :try_start_3
    iget-object v0, p1, Lcom/argusoft/sewa/android/app/support/SupportApi$Failure;->kind:Lcom/argusoft/sewa/android/app/support/SupportApi$Failure$Kind;

    sget-object v1, Lcom/argusoft/sewa/android/app/support/SupportApi$Failure$Kind;->REFUSED:Lcom/argusoft/sewa/android/app/support/SupportApi$Failure$Kind;

    if-ne v0, v1, :cond_2

    .line 289
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/support/SupportApi$Failure;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lcom/argusoft/sewa/android/app/support/SupportStore;->markTicketFailed(Lcom/argusoft/sewa/android/app/model/SupportTicketBean;Ljava/lang/String;)V

    .line 291
    :cond_2
    throw p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method public declared-synchronized refreshOne(Landroid/content/Context;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/argusoft/sewa/android/app/support/SupportApi$Failure;
        }
    .end annotation

    monitor-enter p0

    .line 442
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/argusoft/sewa/android/app/support/SupportStore;->ticket(I)Lcom/argusoft/sewa/android/app/model/SupportTicketBean;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 443
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/SupportTicketBean;->isOnServer()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/support/SupportApi;->isOnline(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 446
    :cond_0
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/support/SupportStore;->api:Lcom/argusoft/sewa/android/app/support/SupportApi;

    iget-object v2, v0, Lcom/argusoft/sewa/android/app/model/SupportTicketBean;->serverId:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/argusoft/sewa/android/app/support/SupportApi;->ticket(J)Lcom/argusoft/sewa/android/app/support/SupportTicket;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 447
    invoke-virtual {p0, p2}, Lcom/argusoft/sewa/android/app/support/SupportStore;->pendingAction(I)Lcom/argusoft/sewa/android/app/model/SupportActionBean;

    move-result-object p2

    if-nez p2, :cond_1

    .line 448
    invoke-static {v0, v1}, Lcom/argusoft/sewa/android/app/support/SupportStore;->apply(Lcom/argusoft/sewa/android/app/model/SupportTicketBean;Lcom/argusoft/sewa/android/app/support/SupportTicket;)V

    .line 449
    new-instance p2, Lcom/argusoft/sewa/android/app/support/SupportStore$$ExternalSyntheticLambda10;

    invoke-direct {p2, p0, v0}, Lcom/argusoft/sewa/android/app/support/SupportStore$$ExternalSyntheticLambda10;-><init>(Lcom/argusoft/sewa/android/app/support/SupportStore;Lcom/argusoft/sewa/android/app/model/SupportTicketBean;)V

    invoke-static {p2}, Lcom/argusoft/sewa/android/app/support/SupportStore;->quietly(Lcom/argusoft/sewa/android/app/support/SupportStore$SqlWork;)V

    .line 451
    :cond_1
    invoke-direct {p0, p1, v0}, Lcom/argusoft/sewa/android/app/support/SupportStore;->refreshDetails(Landroid/content/Context;Lcom/argusoft/sewa/android/app/model/SupportTicketBean;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 452
    monitor-exit p0

    return-void

    .line 444
    :cond_2
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public saveAnswer(Ljava/lang/Long;IZLjava/lang/String;)Lcom/argusoft/sewa/android/app/model/SupportActionBean;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 254
    new-instance v0, Lcom/argusoft/sewa/android/app/model/SupportActionBean;

    invoke-direct {v0}, Lcom/argusoft/sewa/android/app/model/SupportActionBean;-><init>()V

    .line 255
    iput-object p1, v0, Lcom/argusoft/sewa/android/app/model/SupportActionBean;->ownerUserId:Ljava/lang/Long;

    .line 256
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, v0, Lcom/argusoft/sewa/android/app/model/SupportActionBean;->ticketLocalId:Ljava/lang/Integer;

    if-eqz p3, :cond_0

    .line 257
    const-string p1, "FIXED"

    goto :goto_0

    :cond_0
    const-string p1, "NOT_FIXED"

    :goto_0
    iput-object p1, v0, Lcom/argusoft/sewa/android/app/model/SupportActionBean;->action:Ljava/lang/String;

    .line 258
    iput-object p4, v0, Lcom/argusoft/sewa/android/app/model/SupportActionBean;->reason:Ljava/lang/String;

    .line 259
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/argusoft/sewa/android/app/model/SupportActionBean;->createdAt:J

    .line 260
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/support/SupportStore;->actions:Lcom/j256/ormlite/dao/Dao;

    new-instance p4, Lcom/argusoft/sewa/android/app/support/SupportStore$$ExternalSyntheticLambda9;

    invoke-direct {p4, v0}, Lcom/argusoft/sewa/android/app/support/SupportStore$$ExternalSyntheticLambda9;-><init>(Lcom/argusoft/sewa/android/app/model/SupportActionBean;)V

    invoke-direct {p0, p1, v0, p4}, Lcom/argusoft/sewa/android/app/support/SupportStore;->insert(Lcom/j256/ormlite/dao/Dao;Ljava/lang/Object;Lcom/argusoft/sewa/android/app/support/SupportStore$IdSetter;)V

    .line 261
    invoke-virtual {p0, p2}, Lcom/argusoft/sewa/android/app/support/SupportStore;->ticket(I)Lcom/argusoft/sewa/android/app/model/SupportTicketBean;

    move-result-object p1

    if-eqz p1, :cond_2

    if-eqz p3, :cond_1

    .line 263
    const-string p2, "CLOSED"

    goto :goto_1

    :cond_1
    const-string p2, "REOPENED"

    :goto_1
    iput-object p2, p1, Lcom/argusoft/sewa/android/app/model/SupportTicketBean;->status:Ljava/lang/String;

    const/4 p2, 0x0

    .line 264
    iput-object p2, p1, Lcom/argusoft/sewa/android/app/model/SupportTicketBean;->allowedActions:Ljava/lang/String;

    .line 265
    invoke-static {}, Lcom/argusoft/sewa/android/app/support/SupportStore;->now()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/argusoft/sewa/android/app/model/SupportTicketBean;->statusChangedAt:Ljava/lang/String;

    .line 266
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/support/SupportStore;->tickets:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {p2, p1}, Lcom/j256/ormlite/dao/Dao;->update(Ljava/lang/Object;)I

    :cond_2
    return-object v0
.end method

.method public saveNewTicket(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/util/List;)Lcom/argusoft/sewa/android/app/model/SupportTicketBean;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;)",
            "Lcom/argusoft/sewa/android/app/model/SupportTicketBean;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 212
    new-instance v0, Lcom/argusoft/sewa/android/app/model/SupportTicketBean;

    invoke-direct {v0}, Lcom/argusoft/sewa/android/app/model/SupportTicketBean;-><init>()V

    .line 213
    iput-object p1, v0, Lcom/argusoft/sewa/android/app/model/SupportTicketBean;->ownerUserId:Ljava/lang/Long;

    .line 214
    iput-object p2, v0, Lcom/argusoft/sewa/android/app/model/SupportTicketBean;->topic:Ljava/lang/String;

    .line 215
    iput-object p3, v0, Lcom/argusoft/sewa/android/app/model/SupportTicketBean;->description:Ljava/lang/String;

    .line 216
    iput-object p3, v0, Lcom/argusoft/sewa/android/app/model/SupportTicketBean;->title:Ljava/lang/String;

    .line 217
    const-string p1, "NEW"

    iput-object p1, v0, Lcom/argusoft/sewa/android/app/model/SupportTicketBean;->status:Ljava/lang/String;

    .line 218
    invoke-static {}, Lcom/argusoft/sewa/android/app/support/SupportStore;->now()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/argusoft/sewa/android/app/model/SupportTicketBean;->createdAt:Ljava/lang/String;

    .line 219
    iget-object p1, v0, Lcom/argusoft/sewa/android/app/model/SupportTicketBean;->createdAt:Ljava/lang/String;

    iput-object p1, v0, Lcom/argusoft/sewa/android/app/model/SupportTicketBean;->statusChangedAt:Ljava/lang/String;

    if-nez p4, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 220
    :cond_0
    invoke-virtual {p4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    :goto_0
    iput-object p1, v0, Lcom/argusoft/sewa/android/app/model/SupportTicketBean;->voicePath:Ljava/lang/String;

    if-eqz p5, :cond_2

    .line 221
    invoke-interface {p5}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    .line 222
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 223
    invoke-interface {p5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/io/File;

    .line 224
    invoke-virtual {p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 226
    :cond_1
    new-instance p2, Lcom/google/gson/Gson;

    invoke-direct {p2}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {p2, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/argusoft/sewa/android/app/model/SupportTicketBean;->photoPaths:Ljava/lang/String;

    .line 228
    :cond_2
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/argusoft/sewa/android/app/model/SupportTicketBean;->idempotencyKey:Ljava/lang/String;

    .line 229
    const-string p1, "PENDING"

    iput-object p1, v0, Lcom/argusoft/sewa/android/app/model/SupportTicketBean;->syncState:Ljava/lang/String;

    .line 230
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/support/SupportStore;->tickets:Lcom/j256/ormlite/dao/Dao;

    new-instance p2, Lcom/argusoft/sewa/android/app/support/SupportStore$$ExternalSyntheticLambda6;

    invoke-direct {p2, v0}, Lcom/argusoft/sewa/android/app/support/SupportStore$$ExternalSyntheticLambda6;-><init>(Lcom/argusoft/sewa/android/app/model/SupportTicketBean;)V

    invoke-direct {p0, p1, v0, p2}, Lcom/argusoft/sewa/android/app/support/SupportStore;->insert(Lcom/j256/ormlite/dao/Dao;Ljava/lang/Object;Lcom/argusoft/sewa/android/app/support/SupportStore$IdSetter;)V

    return-object v0
.end method

.method public saveReply(Ljava/lang/Long;ILjava/lang/String;Ljava/io/File;)Lcom/argusoft/sewa/android/app/model/SupportCommentBean;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 236
    new-instance v0, Lcom/argusoft/sewa/android/app/model/SupportCommentBean;

    invoke-direct {v0}, Lcom/argusoft/sewa/android/app/model/SupportCommentBean;-><init>()V

    .line 237
    iput-object p1, v0, Lcom/argusoft/sewa/android/app/model/SupportCommentBean;->ownerUserId:Ljava/lang/Long;

    .line 238
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, v0, Lcom/argusoft/sewa/android/app/model/SupportCommentBean;->ticketLocalId:Ljava/lang/Integer;

    const/4 p1, 0x1

    .line 239
    iput-boolean p1, v0, Lcom/argusoft/sewa/android/app/model/SupportCommentBean;->mine:Z

    .line 240
    const-string p1, "REQUESTER"

    iput-object p1, v0, Lcom/argusoft/sewa/android/app/model/SupportCommentBean;->authorType:Ljava/lang/String;

    .line 241
    iput-object p3, v0, Lcom/argusoft/sewa/android/app/model/SupportCommentBean;->body:Ljava/lang/String;

    if-nez p4, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 242
    :cond_0
    invoke-virtual {p4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    :goto_0
    iput-object p1, v0, Lcom/argusoft/sewa/android/app/model/SupportCommentBean;->voicePath:Ljava/lang/String;

    .line 243
    invoke-static {}, Lcom/argusoft/sewa/android/app/support/SupportStore;->now()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/argusoft/sewa/android/app/model/SupportCommentBean;->createdAt:Ljava/lang/String;

    .line 244
    const-string p1, "PENDING"

    iput-object p1, v0, Lcom/argusoft/sewa/android/app/model/SupportCommentBean;->syncState:Ljava/lang/String;

    .line 245
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/support/SupportStore;->comments:Lcom/j256/ormlite/dao/Dao;

    new-instance p2, Lcom/argusoft/sewa/android/app/support/SupportStore$$ExternalSyntheticLambda0;

    invoke-direct {p2, v0}, Lcom/argusoft/sewa/android/app/support/SupportStore$$ExternalSyntheticLambda0;-><init>(Lcom/argusoft/sewa/android/app/model/SupportCommentBean;)V

    invoke-direct {p0, p1, v0, p2}, Lcom/argusoft/sewa/android/app/support/SupportStore;->insert(Lcom/j256/ormlite/dao/Dao;Ljava/lang/Object;Lcom/argusoft/sewa/android/app/support/SupportStore$IdSetter;)V

    return-object v0
.end method

.method public summary(Lcom/argusoft/sewa/android/app/model/SupportTicketBean;)Lcom/argusoft/sewa/android/app/support/SupportStore$Summary;
    .locals 12

    .line 149
    new-instance v0, Lcom/argusoft/sewa/android/app/support/SupportStore$Summary;

    invoke-direct {v0}, Lcom/argusoft/sewa/android/app/support/SupportStore$Summary;-><init>()V

    .line 151
    iget-object v1, p1, Lcom/argusoft/sewa/android/app/model/SupportTicketBean;->voicePath:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, v0, Lcom/argusoft/sewa/android/app/support/SupportStore$Summary;->voice:Z

    .line 152
    invoke-static {p1}, Lcom/argusoft/sewa/android/app/support/SupportStore;->photoPaths(Lcom/argusoft/sewa/android/app/model/SupportTicketBean;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 154
    iget-object v4, p1, Lcom/argusoft/sewa/android/app/model/SupportTicketBean;->createdAt:Ljava/lang/String;

    invoke-static {v4}, Lcom/argusoft/sewa/android/app/support/SupportStatus;->millis(Ljava/lang/String;)J

    move-result-wide v4

    .line 155
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/SupportTicketBean;->getId()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/argusoft/sewa/android/app/support/SupportStore;->attachments(I)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/argusoft/sewa/android/app/model/SupportAttachmentBean;

    .line 156
    invoke-virtual {v7}, Lcom/argusoft/sewa/android/app/model/SupportAttachmentBean;->isImage()Z

    move-result v8

    if-eqz v8, :cond_2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 158
    :cond_2
    invoke-virtual {v7}, Lcom/argusoft/sewa/android/app/model/SupportAttachmentBean;->isVoice()Z

    move-result v8

    if-eqz v8, :cond_1

    iget-object v7, v7, Lcom/argusoft/sewa/android/app/model/SupportAttachmentBean;->createdAt:Ljava/lang/String;

    invoke-static {v7}, Lcom/argusoft/sewa/android/app/support/SupportStatus;->millis(Ljava/lang/String;)J

    move-result-wide v7

    sub-long/2addr v7, v4

    invoke-static {v7, v8}, Ljava/lang/Math;->abs(J)J

    move-result-wide v7

    const-wide/32 v9, 0x1d4c0

    cmp-long v11, v7, v9

    if-gez v11, :cond_1

    .line 159
    iput-boolean v3, v0, Lcom/argusoft/sewa/android/app/support/SupportStore$Summary;->voice:Z

    goto :goto_1

    :cond_3
    if-lez v1, :cond_4

    goto :goto_2

    :cond_4
    move v1, v2

    .line 162
    :goto_2
    iput v1, v0, Lcom/argusoft/sewa/android/app/support/SupportStore$Summary;->photos:I

    .line 163
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/SupportTicketBean;->getId()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/support/SupportStore;->comments(I)Ljava/util/List;

    move-result-object p1

    .line 164
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    iput v1, v0, Lcom/argusoft/sewa/android/app/support/SupportStore$Summary;->replies:I

    .line 165
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    .line 166
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v3

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/argusoft/sewa/android/app/model/SupportCommentBean;

    .line 167
    iget-boolean v2, v1, Lcom/argusoft/sewa/android/app/model/SupportCommentBean;->mine:Z

    xor-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, v0, Lcom/argusoft/sewa/android/app/support/SupportStore$Summary;->lastFromSupport:Ljava/lang/Boolean;

    .line 168
    iget-object v1, v1, Lcom/argusoft/sewa/android/app/model/SupportCommentBean;->createdAt:Ljava/lang/String;

    iput-object v1, v0, Lcom/argusoft/sewa/android/app/support/SupportStore$Summary;->lastAt:Ljava/lang/String;

    .line 170
    :cond_5
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_6
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/argusoft/sewa/android/app/model/SupportCommentBean;

    .line 171
    const-string v2, "SYNCED"

    iget-object v1, v1, Lcom/argusoft/sewa/android/app/model/SupportCommentBean;->syncState:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 172
    iget v1, v0, Lcom/argusoft/sewa/android/app/support/SupportStore$Summary;->waiting:I

    add-int/2addr v1, v3

    iput v1, v0, Lcom/argusoft/sewa/android/app/support/SupportStore$Summary;->waiting:I

    goto :goto_3

    :cond_7
    return-object v0
.end method

.method public declared-synchronized sync(Landroid/content/Context;Ljava/lang/Long;)Lcom/argusoft/sewa/android/app/support/SupportStore$SyncResult;
    .locals 4

    monitor-enter p0

    .line 364
    :try_start_0
    new-instance v0, Lcom/argusoft/sewa/android/app/support/SupportStore$SyncResult;

    invoke-direct {v0}, Lcom/argusoft/sewa/android/app/support/SupportStore$SyncResult;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p2, :cond_0

    .line 366
    monitor-exit p0

    return-object v0

    .line 368
    :cond_0
    :try_start_1
    invoke-static {p1}, Lcom/argusoft/sewa/android/app/support/SupportApi;->isOnline(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 p1, 0x1

    .line 369
    iput-boolean p1, v0, Lcom/argusoft/sewa/android/app/support/SupportStore$SyncResult;->offline:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 370
    monitor-exit p0

    return-object v0

    .line 373
    :cond_1
    :try_start_2
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/support/SupportStore;->tickets:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v1}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v1

    const-string v2, "ownerUserId"

    invoke-virtual {v1, v2, p2}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v1

    invoke-virtual {v1}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    move-result-object v1

    const-string v2, "syncState"

    const-string v3, "PENDING"

    .line 374
    invoke-virtual {v1, v2, v3}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v1

    invoke-virtual {v1}, Lcom/j256/ormlite/stmt/Where;->query()Ljava/util/List;

    move-result-object v1

    .line 373
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/argusoft/sewa/android/app/model/SupportTicketBean;

    .line 375
    new-instance v3, Lcom/argusoft/sewa/android/app/support/SupportStore$$ExternalSyntheticLambda13;

    invoke-direct {v3, p0, p1, v2}, Lcom/argusoft/sewa/android/app/support/SupportStore$$ExternalSyntheticLambda13;-><init>(Lcom/argusoft/sewa/android/app/support/SupportStore;Landroid/content/Context;Lcom/argusoft/sewa/android/app/model/SupportTicketBean;)V

    invoke-static {v0, v3}, Lcom/argusoft/sewa/android/app/support/SupportStore;->send(Lcom/argusoft/sewa/android/app/support/SupportStore$SyncResult;Lcom/argusoft/sewa/android/app/support/SupportStore$Send;)Z

    move-result v2
    :try_end_2
    .catch Lcom/argusoft/sewa/android/app/support/SupportApi$Failure; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v2, :cond_2

    .line 376
    monitor-exit p0

    return-object v0

    .line 379
    :cond_3
    :try_start_3
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/support/SupportStore;->comments:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v1}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v1

    const-string v2, "ownerUserId"

    invoke-virtual {v1, v2, p2}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v1

    invoke-virtual {v1}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    move-result-object v1

    const-string v2, "syncState"

    const-string v3, "PENDING"

    .line 380
    invoke-virtual {v1, v2, v3}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v1

    invoke-virtual {v1}, Lcom/j256/ormlite/stmt/Where;->query()Ljava/util/List;

    move-result-object v1

    .line 379
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/argusoft/sewa/android/app/model/SupportCommentBean;

    .line 381
    iget-object v3, v2, Lcom/argusoft/sewa/android/app/model/SupportCommentBean;->ticketLocalId:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/argusoft/sewa/android/app/support/SupportStore;->ticket(I)Lcom/argusoft/sewa/android/app/model/SupportTicketBean;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 382
    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/model/SupportTicketBean;->isOnServer()Z

    move-result v3

    if-eqz v3, :cond_4

    new-instance v3, Lcom/argusoft/sewa/android/app/support/SupportStore$$ExternalSyntheticLambda14;

    invoke-direct {v3, p0, v2}, Lcom/argusoft/sewa/android/app/support/SupportStore$$ExternalSyntheticLambda14;-><init>(Lcom/argusoft/sewa/android/app/support/SupportStore;Lcom/argusoft/sewa/android/app/model/SupportCommentBean;)V

    invoke-static {v0, v3}, Lcom/argusoft/sewa/android/app/support/SupportStore;->send(Lcom/argusoft/sewa/android/app/support/SupportStore$SyncResult;Lcom/argusoft/sewa/android/app/support/SupportStore$Send;)Z

    move-result v2
    :try_end_3
    .catch Lcom/argusoft/sewa/android/app/support/SupportApi$Failure; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/sql/SQLException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez v2, :cond_4

    .line 383
    monitor-exit p0

    return-object v0

    .line 386
    :cond_5
    :try_start_4
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/support/SupportStore;->actions:Lcom/j256/ormlite/dao/Dao;

    const-string v2, "ownerUserId"

    invoke-interface {v1, v2, p2}, Lcom/j256/ormlite/dao/Dao;->queryForEq(Ljava/lang/String;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/argusoft/sewa/android/app/model/SupportActionBean;

    .line 387
    iget-object v3, v2, Lcom/argusoft/sewa/android/app/model/SupportActionBean;->ticketLocalId:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/argusoft/sewa/android/app/support/SupportStore;->ticket(I)Lcom/argusoft/sewa/android/app/model/SupportTicketBean;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 388
    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/model/SupportTicketBean;->isOnServer()Z

    move-result v3

    if-eqz v3, :cond_6

    new-instance v3, Lcom/argusoft/sewa/android/app/support/SupportStore$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0, v2}, Lcom/argusoft/sewa/android/app/support/SupportStore$$ExternalSyntheticLambda1;-><init>(Lcom/argusoft/sewa/android/app/support/SupportStore;Lcom/argusoft/sewa/android/app/model/SupportActionBean;)V

    invoke-static {v0, v3}, Lcom/argusoft/sewa/android/app/support/SupportStore;->send(Lcom/argusoft/sewa/android/app/support/SupportStore$SyncResult;Lcom/argusoft/sewa/android/app/support/SupportStore$Send;)Z

    move-result v2
    :try_end_4
    .catch Lcom/argusoft/sewa/android/app/support/SupportApi$Failure; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/sql/SQLException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-nez v2, :cond_6

    .line 389
    monitor-exit p0

    return-object v0

    .line 392
    :cond_7
    :try_start_5
    invoke-virtual {p0, p1, p2}, Lcom/argusoft/sewa/android/app/support/SupportStore;->pull(Landroid/content/Context;Ljava/lang/Long;)V
    :try_end_5
    .catch Lcom/argusoft/sewa/android/app/support/SupportApi$Failure; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/sql/SQLException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 396
    :try_start_6
    const-string p2, "SupportStore"

    const-string v1, "Sync could not read the phone\'s requests"

    invoke-static {p2, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception p1

    .line 394
    invoke-static {v0, p1}, Lcom/argusoft/sewa/android/app/support/SupportStore;->record(Lcom/argusoft/sewa/android/app/support/SupportStore$SyncResult;Lcom/argusoft/sewa/android/app/support/SupportApi$Failure;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 398
    :goto_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    :try_start_7
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    throw p1
.end method

.method public ticket(I)Lcom/argusoft/sewa/android/app/model/SupportTicketBean;
    .locals 1

    .line 100
    :try_start_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/support/SupportStore;->tickets:Lcom/j256/ormlite/dao/Dao;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/j256/ormlite/dao/Dao;->queryForId(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/argusoft/sewa/android/app/model/SupportTicketBean;
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public tickets(Ljava/lang/Long;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            ")",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/model/SupportTicketBean;",
            ">;"
        }
    .end annotation

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-nez p1, :cond_0

    return-object v0

    .line 83
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/support/SupportStore;->tickets:Lcom/j256/ormlite/dao/Dao;

    const-string v2, "ownerUserId"

    invoke-interface {v1, v2, p1}, Lcom/j256/ormlite/dao/Dao;->queryForEq(Ljava/lang/String;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 85
    const-string v1, "SupportStore"

    const-string v2, "Could not read requests"

    invoke-static {v1, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 87
    :goto_0
    new-instance p1, Lcom/argusoft/sewa/android/app/support/SupportStore$$ExternalSyntheticLambda11;

    invoke-direct {p1}, Lcom/argusoft/sewa/android/app/support/SupportStore$$ExternalSyntheticLambda11;-><init>()V

    invoke-static {v0, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object v0
.end method

.method public waitingCount(Ljava/lang/Long;)I
    .locals 6

    .line 180
    const-string v0, "PENDING"

    const-string v1, "syncState"

    const-string v2, "ownerUserId"

    const/4 v3, 0x0

    if-nez p1, :cond_0

    return v3

    .line 184
    :cond_0
    :try_start_0
    iget-object v4, p0, Lcom/argusoft/sewa/android/app/support/SupportStore;->tickets:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v4}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v4

    invoke-virtual {v4, v2, p1}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v4

    invoke-virtual {v4}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    move-result-object v4

    .line 185
    invoke-virtual {v4, v1, v0}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v4

    invoke-virtual {v4}, Lcom/j256/ormlite/stmt/Where;->countOf()J

    move-result-wide v4

    long-to-int v5, v4

    .line 186
    iget-object v4, p0, Lcom/argusoft/sewa/android/app/support/SupportStore;->comments:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v4}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v4

    invoke-virtual {v4, v2, p1}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v4

    invoke-virtual {v4}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    move-result-object v4

    .line 187
    invoke-virtual {v4, v1, v0}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/Where;->countOf()J

    move-result-wide v0

    long-to-int v1, v0

    add-int/2addr v5, v1

    .line 188
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/support/SupportStore;->actions:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v0}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    invoke-virtual {v0, v2, p1}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object p1

    invoke-virtual {p1}, Lcom/j256/ormlite/stmt/Where;->countOf()J

    move-result-wide v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    long-to-int p1, v0

    add-int/2addr v5, p1

    return v5

    :catch_0
    return v3
.end method
