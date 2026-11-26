.class public Lcom/argusoft/sewa/android/app/model/UncaughtExceptionBean;
.super Lcom/argusoft/sewa/android/app/model/BaseEntity;
.source "UncaughtExceptionBean.java"


# annotations
.annotation runtime Lcom/j256/ormlite/table/DatabaseTable;
.end annotation


# instance fields
.field private androidVersion:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private exceptionType:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private manufacturer:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private model:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private onDate:Ljava/util/Date;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private revisionNumber:Ljava/lang/Integer;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private stackTrace:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private username:Ljava/lang/String;
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

    .line 104
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/model/BaseEntity;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getAndroidVersion()Ljava/lang/String;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/UncaughtExceptionBean;->androidVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getExceptionType()Ljava/lang/String;
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/UncaughtExceptionBean;->exceptionType:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/Integer;
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/UncaughtExceptionBean;->id:Ljava/lang/Integer;

    return-object v0
.end method

.method public getManufacturer()Ljava/lang/String;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/UncaughtExceptionBean;->manufacturer:Ljava/lang/String;

    return-object v0
.end method

.method public getModel()Ljava/lang/String;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/UncaughtExceptionBean;->model:Ljava/lang/String;

    return-object v0
.end method

.method public getOnDate()Ljava/util/Date;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/UncaughtExceptionBean;->onDate:Ljava/util/Date;

    return-object v0
.end method

.method public getRevisionNumber()Ljava/lang/Integer;
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/UncaughtExceptionBean;->revisionNumber:Ljava/lang/Integer;

    return-object v0
.end method

.method public getStackTrace()Ljava/lang/String;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/UncaughtExceptionBean;->stackTrace:Ljava/lang/String;

    return-object v0
.end method

.method public getUsername()Ljava/lang/String;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/UncaughtExceptionBean;->username:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 109
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/model/BaseEntity;->hashCode()I

    move-result v0

    return v0
.end method

.method public setAndroidVersion(Ljava/lang/String;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/UncaughtExceptionBean;->androidVersion:Ljava/lang/String;

    return-void
.end method

.method public setExceptionType(Ljava/lang/String;)V
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/UncaughtExceptionBean;->exceptionType:Ljava/lang/String;

    return-void
.end method

.method public setId(Ljava/lang/Integer;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/UncaughtExceptionBean;->id:Ljava/lang/Integer;

    return-void
.end method

.method public setManufacturer(Ljava/lang/String;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/UncaughtExceptionBean;->manufacturer:Ljava/lang/String;

    return-void
.end method

.method public setModel(Ljava/lang/String;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/UncaughtExceptionBean;->model:Ljava/lang/String;

    return-void
.end method

.method public setOnDate(Ljava/util/Date;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/UncaughtExceptionBean;->onDate:Ljava/util/Date;

    return-void
.end method

.method public setRevisionNumber(Ljava/lang/Integer;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/UncaughtExceptionBean;->revisionNumber:Ljava/lang/Integer;

    return-void
.end method

.method public setStackTrace(Ljava/lang/String;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/UncaughtExceptionBean;->stackTrace:Ljava/lang/String;

    return-void
.end method

.method public setUsername(Ljava/lang/String;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/UncaughtExceptionBean;->username:Ljava/lang/String;

    return-void
.end method
