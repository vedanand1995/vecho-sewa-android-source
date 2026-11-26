.class Lcom/argusoft/sewa/android/app/activity/GenericHomeScreenActivity$4;
.super Ljava/lang/Object;
.source "GenericHomeScreenActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/activity/GenericHomeScreenActivity;->setVisit()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/argusoft/sewa/android/app/activity/GenericHomeScreenActivity;


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/activity/GenericHomeScreenActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 505
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/GenericHomeScreenActivity$4;->this$0:Lcom/argusoft/sewa/android/app/activity/GenericHomeScreenActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 508
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->choAttendanceTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 509
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/GenericHomeScreenActivity$4;->this$0:Lcom/argusoft/sewa/android/app/activity/GenericHomeScreenActivity;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/activity/GenericHomeScreenActivity;->homeMenuAdapter:Lcom/argusoft/sewa/android/app/component/HomeMenuAdapter;

    sget v1, Lcom/argusoft/sewa/android/app/R$drawable;->menu_absent:I

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/GenericHomeScreenActivity$4;->this$0:Lcom/argusoft/sewa/android/app/activity/GenericHomeScreenActivity;

    iget v2, v2, Lcom/argusoft/sewa/android/app/activity/GenericHomeScreenActivity;->markPresenceIconIndex:I

    invoke-virtual {v0, v1, v2}, Lcom/argusoft/sewa/android/app/component/HomeMenuAdapter;->setIconAtPosition(II)V

    .line 510
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/GenericHomeScreenActivity$4;->this$0:Lcom/argusoft/sewa/android/app/activity/GenericHomeScreenActivity;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/activity/GenericHomeScreenActivity;->homeMenuAdapter:Lcom/argusoft/sewa/android/app/component/HomeMenuAdapter;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/GenericHomeScreenActivity$4;->this$0:Lcom/argusoft/sewa/android/app/activity/GenericHomeScreenActivity;

    iget v1, v1, Lcom/argusoft/sewa/android/app/activity/GenericHomeScreenActivity;->markPresenceIconIndex:I

    const-string v2, "Mark Present"

    invoke-virtual {v0, v2, v1}, Lcom/argusoft/sewa/android/app/component/HomeMenuAdapter;->setLabelAtPosition(Ljava/lang/String;I)V

    .line 511
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/GenericHomeScreenActivity$4;->this$0:Lcom/argusoft/sewa/android/app/activity/GenericHomeScreenActivity;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/activity/GenericHomeScreenActivity;->homeMenuAdapter:Lcom/argusoft/sewa/android/app/component/HomeMenuAdapter;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/component/HomeMenuAdapter;->notifyDataSetChanged()V

    return-void
.end method
