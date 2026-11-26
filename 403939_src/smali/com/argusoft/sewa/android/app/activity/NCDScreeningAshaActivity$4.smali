.class Lcom/argusoft/sewa/android/app/activity/NCDScreeningAshaActivity$4;
.super Ljava/lang/Object;
.source "NCDScreeningAshaActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/activity/NCDScreeningAshaActivity;->setMemberSelectionScreen()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/argusoft/sewa/android/app/activity/NCDScreeningAshaActivity;


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/activity/NCDScreeningAshaActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 406
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NCDScreeningAshaActivity$4;->this$0:Lcom/argusoft/sewa/android/app/activity/NCDScreeningAshaActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 409
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NCDScreeningAshaActivity$4;->this$0:Lcom/argusoft/sewa/android/app/activity/NCDScreeningAshaActivity;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/argusoft/sewa/android/app/activity/NCDScreeningAshaActivity;->navigateToHomeScreen(Z)V

    return-void
.end method
