.class Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityRBSK$2;
.super Ljava/lang/Object;
.source "HomeScreenActivityRBSK.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityRBSK;->checkNetworkAvailability()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityRBSK;


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityRBSK;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 210
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityRBSK$2;->this$0:Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityRBSK;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 213
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityRBSK$2;->this$0:Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityRBSK;

    iget-object p1, p1, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityRBSK;->alertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->dismiss()V

    return-void
.end method
