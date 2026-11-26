.class Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListenerNPCB$2;
.super Ljava/lang/Object;
.source "HealthInfrastructureListenerNPCB.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListenerNPCB;->setSearchTypeView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListenerNPCB;


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListenerNPCB;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 155
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListenerNPCB$2;->this$0:Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListenerNPCB;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 161
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListenerNPCB$2;->this$0:Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListenerNPCB;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListenerNPCB;->access$100(Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListenerNPCB;)Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    return-void
.end method
