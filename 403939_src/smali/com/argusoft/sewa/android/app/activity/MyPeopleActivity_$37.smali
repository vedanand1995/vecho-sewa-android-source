.class Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity_$37;
.super Ljava/lang/Object;
.source "MyPeopleActivity_.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity_;->setRadioButtonColorFromSyncStatus(Landroid/widget/RadioButton;Lcom/argusoft/sewa/android/app/databean/MemberDataBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity_;

.field final synthetic val$memberDataBean:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

.field final synthetic val$radioButton:Landroid/widget/RadioButton;


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity_;Landroid/widget/RadioButton;Lcom/argusoft/sewa/android/app/databean/MemberDataBean;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 547
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity_$37;->this$0:Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity_;

    iput-object p2, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity_$37;->val$radioButton:Landroid/widget/RadioButton;

    iput-object p3, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity_$37;->val$memberDataBean:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 551
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity_$37;->this$0:Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity_;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity_$37;->val$radioButton:Landroid/widget/RadioButton;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity_$37;->val$memberDataBean:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-static {v0, v1, v2}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity_;->access$3601(Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity_;Landroid/widget/RadioButton;Lcom/argusoft/sewa/android/app/databean/MemberDataBean;)V

    return-void
.end method
