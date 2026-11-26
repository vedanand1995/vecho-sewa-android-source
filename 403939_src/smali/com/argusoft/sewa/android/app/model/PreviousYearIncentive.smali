.class public Lcom/argusoft/sewa/android/app/model/PreviousYearIncentive;
.super Lcom/argusoft/sewa/android/app/model/BaseEntity;
.source "PreviousYearIncentive.java"


# annotations
.annotation runtime Lcom/j256/ormlite/table/DatabaseTable;
.end annotation


# instance fields
.field private incentiveMonth:Ljava/util/Date;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private incentiveType:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private totalAmount:I
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private userId:Ljava/lang/Integer;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private val:I
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/model/BaseEntity;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/argusoft/sewa/android/app/model/PreviousYearIncentive;)V
    .locals 1

    .line 26
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/model/BaseEntity;-><init>()V

    .line 27
    iget-object v0, p1, Lcom/argusoft/sewa/android/app/model/PreviousYearIncentive;->incentiveType:Ljava/lang/String;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/model/PreviousYearIncentive;->incentiveType:Ljava/lang/String;

    .line 28
    iget-object v0, p1, Lcom/argusoft/sewa/android/app/model/PreviousYearIncentive;->incentiveMonth:Ljava/util/Date;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/model/PreviousYearIncentive;->incentiveMonth:Ljava/util/Date;

    .line 29
    iget v0, p1, Lcom/argusoft/sewa/android/app/model/PreviousYearIncentive;->val:I

    iput v0, p0, Lcom/argusoft/sewa/android/app/model/PreviousYearIncentive;->val:I

    .line 30
    iget p1, p1, Lcom/argusoft/sewa/android/app/model/PreviousYearIncentive;->totalAmount:I

    iput p1, p0, Lcom/argusoft/sewa/android/app/model/PreviousYearIncentive;->totalAmount:I

    return-void
.end method


# virtual methods
.method public getIncentiveMonth()Ljava/util/Date;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/PreviousYearIncentive;->incentiveMonth:Ljava/util/Date;

    return-object v0
.end method

.method public getIncentiveType()Ljava/lang/String;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/PreviousYearIncentive;->incentiveType:Ljava/lang/String;

    return-object v0
.end method

.method public getTotalAmount()I
    .locals 1

    .line 58
    iget v0, p0, Lcom/argusoft/sewa/android/app/model/PreviousYearIncentive;->totalAmount:I

    return v0
.end method

.method public getUserId()Ljava/lang/Integer;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/PreviousYearIncentive;->userId:Ljava/lang/Integer;

    return-object v0
.end method

.method public getVal()I
    .locals 1

    .line 50
    iget v0, p0, Lcom/argusoft/sewa/android/app/model/PreviousYearIncentive;->val:I

    return v0
.end method

.method public setIncentiveMonth(Ljava/util/Date;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/PreviousYearIncentive;->incentiveMonth:Ljava/util/Date;

    return-void
.end method

.method public setIncentiveType(Ljava/lang/String;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/PreviousYearIncentive;->incentiveType:Ljava/lang/String;

    return-void
.end method

.method public setTotalAmount(I)V
    .locals 0

    .line 62
    iput p1, p0, Lcom/argusoft/sewa/android/app/model/PreviousYearIncentive;->totalAmount:I

    return-void
.end method

.method public setUserId(Ljava/lang/Integer;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/PreviousYearIncentive;->userId:Ljava/lang/Integer;

    return-void
.end method

.method public setVal(I)V
    .locals 0

    .line 54
    iput p1, p0, Lcom/argusoft/sewa/android/app/model/PreviousYearIncentive;->val:I

    return-void
.end method
