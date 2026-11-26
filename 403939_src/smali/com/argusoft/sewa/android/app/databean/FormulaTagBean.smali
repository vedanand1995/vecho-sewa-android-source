.class public Lcom/argusoft/sewa/android/app/databean/FormulaTagBean;
.super Ljava/lang/Object;
.source "FormulaTagBean.java"


# instance fields
.field private formulavalue:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getFormulavalue()Ljava/lang/String;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/FormulaTagBean;->formulavalue:Ljava/lang/String;

    return-object v0
.end method

.method public setFormulavalue(Ljava/lang/String;)V
    .locals 0

    .line 21
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/FormulaTagBean;->formulavalue:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "FormulaTagBean{formulavalue=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/databean/FormulaTagBean;->formulavalue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\'}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
