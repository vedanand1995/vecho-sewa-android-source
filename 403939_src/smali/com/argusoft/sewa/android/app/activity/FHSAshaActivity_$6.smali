.class Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity_$6;
.super Ljava/lang/Object;
.source "FHSAshaActivity_.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity_;->setFamilySelectionScreen(Ljava/lang/Boolean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity_;

.field final synthetic val$isSearch:Ljava/lang/Boolean;


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity_;Ljava/lang/Boolean;)V
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

    .line 151
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity_$6;->this$0:Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity_;

    iput-object p2, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity_$6;->val$isSearch:Ljava/lang/Boolean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 155
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity_$6;->this$0:Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity_;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity_$6;->val$isSearch:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity_;->access$501(Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity_;Ljava/lang/Boolean;)V

    return-void
.end method
