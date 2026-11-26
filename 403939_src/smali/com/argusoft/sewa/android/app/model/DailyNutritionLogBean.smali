.class public Lcom/argusoft/sewa/android/app/model/DailyNutritionLogBean;
.super Lcom/argusoft/sewa/android/app/model/BaseEntity;
.source "DailyNutritionLogBean.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lcom/j256/ormlite/table/DatabaseTable;
.end annotation


# instance fields
.field private locationId:Ljava/lang/Integer;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private seviceDate:Ljava/lang/Long;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/model/BaseEntity;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 0

    .line 35
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/model/BaseEntity;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getLocationId()Ljava/lang/Integer;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/DailyNutritionLogBean;->locationId:Ljava/lang/Integer;

    return-object v0
.end method

.method public getSeviceDate()Ljava/lang/Long;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/DailyNutritionLogBean;->seviceDate:Ljava/lang/Long;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 40
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/model/BaseEntity;->hashCode()I

    move-result v0

    return v0
.end method

.method public setLocationId(Ljava/lang/Integer;)V
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/DailyNutritionLogBean;->locationId:Ljava/lang/Integer;

    return-void
.end method

.method public setSeviceDate(Ljava/lang/Long;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/DailyNutritionLogBean;->seviceDate:Ljava/lang/Long;

    return-void
.end method
