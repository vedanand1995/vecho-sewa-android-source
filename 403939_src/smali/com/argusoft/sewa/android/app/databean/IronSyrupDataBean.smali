.class public Lcom/argusoft/sewa/android/app/databean/IronSyrupDataBean;
.super Ljava/lang/Object;
.source "IronSyrupDataBean.java"


# instance fields
.field private ironSyrup:Ljava/lang/Boolean;

.field private memberFullName:Ljava/lang/String;

.field private memberId:Ljava/lang/String;

.field private uniqueHealthId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getIronSyrup()Ljava/lang/Boolean;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/IronSyrupDataBean;->ironSyrup:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getMemberFullName()Ljava/lang/String;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/IronSyrupDataBean;->memberFullName:Ljava/lang/String;

    return-object v0
.end method

.method public getMemberId()Ljava/lang/String;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/IronSyrupDataBean;->memberId:Ljava/lang/String;

    return-object v0
.end method

.method public getUniqueHealthId()Ljava/lang/String;
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/IronSyrupDataBean;->uniqueHealthId:Ljava/lang/String;

    return-object v0
.end method

.method public setIronSyrup(Ljava/lang/Boolean;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/IronSyrupDataBean;->ironSyrup:Ljava/lang/Boolean;

    return-void
.end method

.method public setMemberFullName(Ljava/lang/String;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/IronSyrupDataBean;->memberFullName:Ljava/lang/String;

    return-void
.end method

.method public setMemberId(Ljava/lang/String;)V
    .locals 0

    .line 23
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/IronSyrupDataBean;->memberId:Ljava/lang/String;

    return-void
.end method

.method public setUniqueHealthId(Ljava/lang/String;)V
    .locals 0

    .line 15
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/IronSyrupDataBean;->uniqueHealthId:Ljava/lang/String;

    return-void
.end method
