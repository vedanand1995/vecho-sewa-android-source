.class Lcom/argusoft/sewa/android/app/activity/FamilySplitActivity$3;
.super Ljava/lang/Object;
.source "FamilySplitActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/activity/FamilySplitActivity;->setMemberSelectionScreen()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/argusoft/sewa/android/app/activity/FamilySplitActivity;

.field final synthetic val$memberDataBean:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/activity/FamilySplitActivity;Lcom/argusoft/sewa/android/app/databean/MemberDataBean;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 329
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FamilySplitActivity$3;->this$0:Lcom/argusoft/sewa/android/app/activity/FamilySplitActivity;

    iput-object p2, p0, Lcom/argusoft/sewa/android/app/activity/FamilySplitActivity$3;->val$memberDataBean:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    if-eqz p2, :cond_0

    .line 333
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FamilySplitActivity$3;->this$0:Lcom/argusoft/sewa/android/app/activity/FamilySplitActivity;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/activity/FamilySplitActivity;->access$000(Lcom/argusoft/sewa/android/app/activity/FamilySplitActivity;)Ljava/util/List;

    move-result-object p1

    iget-object p2, p0, Lcom/argusoft/sewa/android/app/activity/FamilySplitActivity$3;->val$memberDataBean:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-interface {p1, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 334
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FamilySplitActivity$3;->this$0:Lcom/argusoft/sewa/android/app/activity/FamilySplitActivity;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/activity/FamilySplitActivity;->access$100(Lcom/argusoft/sewa/android/app/activity/FamilySplitActivity;)Ljava/util/List;

    move-result-object p1

    iget-object p2, p0, Lcom/argusoft/sewa/android/app/activity/FamilySplitActivity$3;->val$memberDataBean:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-interface {p1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 335
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FamilySplitActivity$3;->this$0:Lcom/argusoft/sewa/android/app/activity/FamilySplitActivity;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/activity/FamilySplitActivity;->access$100(Lcom/argusoft/sewa/android/app/activity/FamilySplitActivity;)Ljava/util/List;

    move-result-object p1

    iget-object p2, p0, Lcom/argusoft/sewa/android/app/activity/FamilySplitActivity$3;->val$memberDataBean:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 338
    :cond_0
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FamilySplitActivity$3;->this$0:Lcom/argusoft/sewa/android/app/activity/FamilySplitActivity;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/activity/FamilySplitActivity;->access$100(Lcom/argusoft/sewa/android/app/activity/FamilySplitActivity;)Ljava/util/List;

    move-result-object p1

    iget-object p2, p0, Lcom/argusoft/sewa/android/app/activity/FamilySplitActivity$3;->val$memberDataBean:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-interface {p1, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 339
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FamilySplitActivity$3;->this$0:Lcom/argusoft/sewa/android/app/activity/FamilySplitActivity;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/activity/FamilySplitActivity;->access$000(Lcom/argusoft/sewa/android/app/activity/FamilySplitActivity;)Ljava/util/List;

    move-result-object p1

    iget-object p2, p0, Lcom/argusoft/sewa/android/app/activity/FamilySplitActivity$3;->val$memberDataBean:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-interface {p1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 340
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FamilySplitActivity$3;->this$0:Lcom/argusoft/sewa/android/app/activity/FamilySplitActivity;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/activity/FamilySplitActivity;->access$000(Lcom/argusoft/sewa/android/app/activity/FamilySplitActivity;)Ljava/util/List;

    move-result-object p1

    iget-object p2, p0, Lcom/argusoft/sewa/android/app/activity/FamilySplitActivity$3;->val$memberDataBean:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    return-void
.end method
