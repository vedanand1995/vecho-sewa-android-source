.class public Lcom/argusoft/sewa/android/app/model/FormAccessibilityBean;
.super Lcom/argusoft/sewa/android/app/model/BaseEntity;
.source "FormAccessibilityBean.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lcom/j256/ormlite/table/DatabaseTable;
.end annotation


# instance fields
.field private form:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private formCode:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private isTrainingReq:Ljava/lang/Boolean;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private readyToMoveProduction:Ljava/lang/Boolean;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private state:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/model/BaseEntity;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 0

    .line 72
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/model/BaseEntity;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getForm()Ljava/lang/String;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/FormAccessibilityBean;->form:Ljava/lang/String;

    return-object v0
.end method

.method public getFormCode()Ljava/lang/String;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/FormAccessibilityBean;->formCode:Ljava/lang/String;

    return-object v0
.end method

.method public getReadyToMoveProduction()Ljava/lang/Boolean;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/FormAccessibilityBean;->readyToMoveProduction:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getState()Ljava/lang/String;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/FormAccessibilityBean;->state:Ljava/lang/String;

    return-object v0
.end method

.method public getTrainingReq()Ljava/lang/Boolean;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/FormAccessibilityBean;->isTrainingReq:Ljava/lang/Boolean;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 77
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/model/BaseEntity;->hashCode()I

    move-result v0

    return v0
.end method

.method public setForm(Ljava/lang/String;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/FormAccessibilityBean;->form:Ljava/lang/String;

    return-void
.end method

.method public setFormCode(Ljava/lang/String;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/FormAccessibilityBean;->formCode:Ljava/lang/String;

    return-void
.end method

.method public setReadyToMoveProduction(Ljava/lang/Boolean;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/FormAccessibilityBean;->readyToMoveProduction:Ljava/lang/Boolean;

    return-void
.end method

.method public setState(Ljava/lang/String;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/FormAccessibilityBean;->state:Ljava/lang/String;

    return-void
.end method

.method public setTrainingReq(Ljava/lang/Boolean;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/FormAccessibilityBean;->isTrainingReq:Ljava/lang/Boolean;

    return-void
.end method
