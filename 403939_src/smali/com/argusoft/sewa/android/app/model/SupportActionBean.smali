.class public Lcom/argusoft/sewa/android/app/model/SupportActionBean;
.super Lcom/argusoft/sewa/android/app/model/BaseEntity;
.source "SupportActionBean.java"


# annotations
.annotation runtime Lcom/j256/ormlite/table/DatabaseTable;
.end annotation


# static fields
.field public static final FIXED:Ljava/lang/String; = "FIXED"

.field public static final NOT_FIXED:Ljava/lang/String; = "NOT_FIXED"


# instance fields
.field public action:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field public createdAt:J
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field public ownerUserId:Ljava/lang/Long;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field public reason:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field public ticketLocalId:Ljava/lang/Integer;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        index = true
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
.method public getId()Ljava/lang/Integer;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/SupportActionBean;->id:Ljava/lang/Integer;

    return-object v0
.end method

.method public setId(Ljava/lang/Integer;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/SupportActionBean;->id:Ljava/lang/Integer;

    return-void
.end method
