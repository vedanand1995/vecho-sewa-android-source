.class Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity$5;
.super Ljava/lang/Object;
.source "AbhaNumberActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity;->addSelectedFamilyDetails(Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity;


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 568
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity$5;->this$0:Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 571
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity$5;->this$0:Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity;->onBackPressed()V

    return-void
.end method
