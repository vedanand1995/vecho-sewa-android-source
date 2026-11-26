.class Lcom/argusoft/sewa/android/app/activity/NcdRegisterAshaActivity$5;
.super Ljava/lang/Object;
.source "NcdRegisterAshaActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/activity/NcdRegisterAshaActivity;->setMemberSelectionScreen(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/argusoft/sewa/android/app/activity/NcdRegisterAshaActivity;


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/activity/NcdRegisterAshaActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 320
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NcdRegisterAshaActivity$5;->this$0:Lcom/argusoft/sewa/android/app/activity/NcdRegisterAshaActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 323
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NcdRegisterAshaActivity$5;->this$0:Lcom/argusoft/sewa/android/app/activity/NcdRegisterAshaActivity;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/argusoft/sewa/android/app/activity/NcdRegisterAshaActivity;->navigateToHomeScreen(Z)V

    return-void
.end method
