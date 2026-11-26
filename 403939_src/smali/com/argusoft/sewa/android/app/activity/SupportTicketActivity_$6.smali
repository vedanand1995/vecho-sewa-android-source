.class Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity_$6;
.super Ljava/lang/Object;
.source "SupportTicketActivity_.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity_;->photoLoaded(Landroid/widget/ImageView;Landroid/graphics/Bitmap;Ljava/io/File;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity_;

.field final synthetic val$into:Landroid/widget/ImageView;

.field final synthetic val$local:Ljava/io/File;

.field final synthetic val$thumb:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity_;Landroid/widget/ImageView;Landroid/graphics/Bitmap;Ljava/io/File;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
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

    .line 150
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity_$6;->this$0:Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity_;

    iput-object p2, p0, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity_$6;->val$into:Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity_$6;->val$thumb:Landroid/graphics/Bitmap;

    iput-object p4, p0, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity_$6;->val$local:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 154
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity_$6;->this$0:Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity_;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity_$6;->val$into:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity_$6;->val$thumb:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity_$6;->val$local:Ljava/io/File;

    invoke-static {v0, v1, v2, v3}, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity_;->access$501(Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity_;Landroid/widget/ImageView;Landroid/graphics/Bitmap;Ljava/io/File;)V

    return-void
.end method
