.class Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListenerNPCB$5;
.super Ljava/lang/Object;
.source "HealthInfrastructureListenerNPCB.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    .line 197
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListenerNPCB$5;->this$0:Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListenerNPCB;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 200
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListenerNPCB$5;->this$0:Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListenerNPCB;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListenerNPCB;->access$200(Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListenerNPCB;)Landroid/widget/AutoCompleteTextView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 201
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListenerNPCB$5;->this$0:Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListenerNPCB;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListenerNPCB;->access$200(Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListenerNPCB;)Landroid/widget/AutoCompleteTextView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/AutoCompleteTextView;->requestFocus()Z

    .line 202
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListenerNPCB$5;->this$0:Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListenerNPCB;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListenerNPCB;->access$200(Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListenerNPCB;)Landroid/widget/AutoCompleteTextView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/AutoCompleteTextView;->showDropDown()V

    return-void
.end method
