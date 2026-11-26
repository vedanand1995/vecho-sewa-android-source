.class Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity$5$1$1;
.super Ljava/lang/Object;
.source "MyPeopleAshaActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity$5$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity$5$1;


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity$5$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 576
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity$5$1$1;->this$2:Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity$5$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 579
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity$5$1$1;->this$2:Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity$5$1;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity$5$1;->this$1:Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity$5;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity$5;->this$0:Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->access$200(Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;)I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 580
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity$5$1$1;->this$2:Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity$5$1;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity$5$1;->this$1:Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity$5;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity$5;->this$0:Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity$5$1$1;->this$2:Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity$5$1;

    iget-object v1, v1, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity$5$1;->val$s:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->retrieveLCDCFamilyListFromDB(Ljava/lang/String;)V

    goto :goto_0

    .line 581
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity$5$1$1;->this$2:Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity$5$1;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity$5$1;->this$1:Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity$5;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity$5;->this$0:Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->access$200(Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;)I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_1

    .line 582
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity$5$1$1;->this$2:Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity$5$1;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity$5$1;->this$1:Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity$5;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity$5;->this$0:Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity$5$1$1;->this$2:Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity$5$1;

    iget-object v1, v1, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity$5$1;->val$s:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->retrieveFilariaFamilyListFromDB(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 583
    :cond_1
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity$5$1$1;->this$2:Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity$5$1;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity$5$1;->this$1:Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity$5;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity$5;->this$0:Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->access$200(Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;)I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_2

    .line 584
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity$5$1$1;->this$2:Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity$5$1;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity$5$1;->this$1:Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity$5;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity$5;->this$0:Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity$5$1$1;->this$2:Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity$5$1;

    iget-object v1, v1, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity$5$1;->val$s:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->retrieveLCDC02FamilyListFromDB(Ljava/lang/String;)V

    .line 586
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity$5$1$1;->this$2:Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity$5$1;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity$5$1;->this$1:Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity$5;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity$5;->this$0:Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->access$500(Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setFocusable(Z)V

    return-void
.end method
