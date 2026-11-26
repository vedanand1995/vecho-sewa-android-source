.class Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity$1;
.super Ljava/lang/Object;
.source "LMSVideoPlayerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->createToggle()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;

.field final synthetic val$imageButton:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;Landroid/widget/ImageView;)V
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

    .line 207
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity$1;->this$0:Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;

    iput-object p2, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity$1;->val$imageButton:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8

    .line 210
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity$1;->this$0:Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->access$000(Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {p1, v0}, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->access$002(Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;Z)Z

    .line 211
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity$1;->this$0:Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->access$000(Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;)Z

    move-result p1

    const/4 v0, 0x0

    const/4 v2, -0x1

    if-eqz p1, :cond_0

    .line 212
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity$1;->val$imageButton:Landroid/widget/ImageView;

    sget v3, Lcom/argusoft/sewa/android/app/R$drawable;->ic_arrow_right:I

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 213
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity$1;->this$0:Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->access$100(Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;)Landroid/media/MediaPlayer;

    move-result-object p1

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->pause()V

    .line 214
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity$1;->this$0:Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->access$100(Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;)Landroid/media/MediaPlayer;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v3

    invoke-static {p1, v3}, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->access$202(Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;I)I

    .line 215
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity$1;->this$0:Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->access$300(Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;)Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 217
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity$1;->this$0:Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;

    iget-object v3, p1, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->context:Landroid/content/Context;

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-static {v3, v2, v0, v4}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getLinearLayout(Landroid/content/Context;IILandroid/widget/LinearLayout$LayoutParams;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-static {p1, v3}, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->access$402(Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;

    .line 218
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity$1;->this$0:Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;

    iget-object v3, p1, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->context:Landroid/content/Context;

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v5, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity$1;->this$0:Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;

    invoke-static {v5}, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->access$500(Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;)I

    move-result v5

    mul-int/lit8 v5, v5, 0x46

    div-int/lit8 v5, v5, 0x64

    iget-object v6, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity$1;->this$0:Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;

    invoke-static {v6}, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->access$600(Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;)I

    move-result v6

    invoke-direct {v4, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-static {v3, v2, v1, v4}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getLinearLayout(Landroid/content/Context;IILandroid/widget/LinearLayout$LayoutParams;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-static {p1, v3}, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->access$302(Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;

    .line 219
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity$1;->this$0:Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->access$300(Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;)Landroid/widget/LinearLayout;

    move-result-object p1

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity$1;->this$0:Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;

    invoke-static {v3}, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->access$700(Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;)Landroid/widget/FrameLayout;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 220
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity$1;->this$0:Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;

    iget-object v3, p1, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->context:Landroid/content/Context;

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v5, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity$1;->this$0:Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;

    invoke-static {v5}, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->access$500(Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;)I

    move-result v5

    mul-int/lit8 v5, v5, 0x1e

    div-int/lit8 v5, v5, 0x64

    iget-object v6, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity$1;->this$0:Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;

    invoke-static {v6}, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->access$600(Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;)I

    move-result v6

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-direct {v4, v5, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-static {v3, v2, v1, v4}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getLinearLayout(Landroid/content/Context;IILandroid/widget/LinearLayout$LayoutParams;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-static {p1, v3}, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->access$802(Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;

    .line 221
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity$1;->this$0:Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;

    iget-object v3, p1, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->context:Landroid/content/Context;

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x2

    invoke-direct {v4, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-static {v3, v2, v1, v4}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getLinearLayout(Landroid/content/Context;IILandroid/widget/LinearLayout$LayoutParams;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->access$902(Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;

    .line 222
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity$1;->this$0:Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->access$1100(Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;)Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;->getActualId()Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->access$1200(Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;Ljava/lang/Integer;)Lcom/argusoft/sewa/android/app/component/PagingListView;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->access$1002(Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;Lcom/argusoft/sewa/android/app/component/PagingListView;)Lcom/argusoft/sewa/android/app/component/PagingListView;

    .line 223
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity$1;->this$0:Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->access$900(Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;)Landroid/widget/LinearLayout;

    move-result-object p1

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity$1;->this$0:Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->access$1000(Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;)Lcom/argusoft/sewa/android/app/component/PagingListView;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 224
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity$1;->this$0:Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->access$1400(Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->access$1302(Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;

    .line 226
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity$1;->this$0:Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->access$800(Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;)Landroid/widget/LinearLayout;

    move-result-object p1

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity$1;->this$0:Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->access$1500(Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;)Landroid/view/View;

    move-result-object v1

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const v4, 0x3dcccccd    # 0.1f

    invoke-direct {v3, v2, v0, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {p1, v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 227
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity$1;->this$0:Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->access$800(Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;)Landroid/widget/LinearLayout;

    move-result-object p1

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity$1;->this$0:Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->access$900(Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;)Landroid/widget/LinearLayout;

    move-result-object v1

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v4, 0x3f400000    # 0.75f

    invoke-direct {v3, v2, v0, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {p1, v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 228
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity$1;->this$0:Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->access$800(Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;)Landroid/widget/LinearLayout;

    move-result-object p1

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity$1;->this$0:Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->access$1300(Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;)Landroid/widget/LinearLayout;

    move-result-object v1

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const v4, 0x3e19999a    # 0.15f

    invoke-direct {v3, v2, v0, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {p1, v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 230
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity$1;->this$0:Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->access$400(Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;)Landroid/widget/LinearLayout;

    move-result-object p1

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity$1;->this$0:Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->access$300(Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 231
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity$1;->this$0:Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->access$400(Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;)Landroid/widget/LinearLayout;

    move-result-object p1

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity$1;->this$0:Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->access$800(Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 232
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity$1;->this$0:Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->access$400(Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->setContentView(Landroid/view/View;)V

    goto :goto_0

    .line 234
    :cond_0
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity$1;->this$0:Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->access$300(Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;)Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 235
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity$1;->this$0:Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->access$700(Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;)Landroid/widget/FrameLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 236
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity$1;->this$0:Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;

    iget-object v1, p1, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->context:Landroid/content/Context;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-static {v1, v2, v0, v3}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getLinearLayout(Landroid/content/Context;IILandroid/widget/LinearLayout$LayoutParams;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->access$302(Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;

    .line 237
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity$1;->this$0:Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->access$1600(Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;)V

    .line 238
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity$1;->val$imageButton:Landroid/widget/ImageView;

    sget v0, Lcom/argusoft/sewa/android/app/R$drawable;->ic_arrow_left:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 239
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity$1;->this$0:Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->access$300(Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->setContentView(Landroid/view/View;)V

    :goto_0
    return-void
.end method
