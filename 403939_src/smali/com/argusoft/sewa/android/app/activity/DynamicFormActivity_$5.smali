.class Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity_$5;
.super Ljava/lang/Object;
.source "DynamicFormActivity_.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity_;->showToaster(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity_;

.field final synthetic val$msg:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity_;Ljava/lang/String;)V
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

    .line 161
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity_$5;->this$0:Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity_;

    iput-object p2, p0, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity_$5;->val$msg:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 165
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity_$5;->this$0:Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity_;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity_$5;->val$msg:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity_;->access$401(Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity_;Ljava/lang/String;)V

    return-void
.end method
