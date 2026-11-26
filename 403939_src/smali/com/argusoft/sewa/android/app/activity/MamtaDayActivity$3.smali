.class Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity$3;
.super Ljava/lang/Object;
.source "MamtaDayActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;->setMemberSelectionScreen(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 283
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity$3;->this$0:Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 286
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity$3;->this$0:Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;->navigateToHomeScreen(Z)V

    return-void
.end method
