.class Lcom/argusoft/sewa/android/app/component/IdentitySelectionComponent$1;
.super Ljava/lang/Object;
.source "IdentitySelectionComponent.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/component/IdentitySelectionComponent;->setMainLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/argusoft/sewa/android/app/component/IdentitySelectionComponent;


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/component/IdentitySelectionComponent;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 118
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/IdentitySelectionComponent$1;->this$0:Lcom/argusoft/sewa/android/app/component/IdentitySelectionComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 121
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/IdentitySelectionComponent$1;->this$0:Lcom/argusoft/sewa/android/app/component/IdentitySelectionComponent;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/component/IdentitySelectionComponent;->access$100(Lcom/argusoft/sewa/android/app/component/IdentitySelectionComponent;)Lcom/argusoft/sewa/android/app/SingleSelectComponent;

    move-result-object p2

    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/SingleSelectComponent;->getAnswerString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/argusoft/sewa/android/app/component/IdentitySelectionComponent;->access$002(Lcom/argusoft/sewa/android/app/component/IdentitySelectionComponent;Ljava/lang/String;)Ljava/lang/String;

    .line 122
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/IdentitySelectionComponent$1;->this$0:Lcom/argusoft/sewa/android/app/component/IdentitySelectionComponent;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/component/IdentitySelectionComponent;->access$200(Lcom/argusoft/sewa/android/app/component/IdentitySelectionComponent;)V

    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    return-void
.end method
