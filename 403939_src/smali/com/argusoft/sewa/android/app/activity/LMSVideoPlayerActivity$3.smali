.class Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity$3;
.super Ljava/lang/Object;
.source "LMSVideoPlayerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->createTabBar()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;

.field final synthetic val$bookmarkButton:Landroid/view/View;

.field final synthetic val$iButton:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;Landroid/view/View;Landroid/view/View;)V
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

    .line 269
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity$3;->this$0:Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;

    iput-object p2, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity$3;->val$bookmarkButton:Landroid/view/View;

    iput-object p3, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity$3;->val$iButton:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    .line 272
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity$3;->val$bookmarkButton:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setSelected(Z)V

    .line 273
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity$3;->val$iButton:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/view/View;->setSelected(Z)V

    .line 274
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity$3;->this$0:Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->access$800(Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;)Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 275
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity$3;->this$0:Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->access$900(Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;)Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 277
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity$3;->this$0:Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;

    iget-object p1, p1, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->context:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v1, Lcom/argusoft/sewa/android/app/R$layout;->video_description_layout:I

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 278
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity$3;->this$0:Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;

    sget v2, Lcom/argusoft/sewa/android/app/R$id;->video_desc:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/material/textview/MaterialTextView;

    invoke-static {v1, v2}, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->access$1702(Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;Lcom/google/android/material/textview/MaterialTextView;)Lcom/google/android/material/textview/MaterialTextView;

    .line 280
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity$3;->this$0:Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;

    sget v2, Lcom/argusoft/sewa/android/app/R$id;->open_video:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->access$1802(Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;Landroid/view/View;)Landroid/view/View;

    .line 281
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity$3;->this$0:Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->access$1800(Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity$3$1;

    invoke-direct {v2, p0}, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity$3$1;-><init>(Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity$3;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 287
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity$3;->this$0:Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->access$1800(Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 289
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity$3;->this$0:Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;

    sget v3, Lcom/argusoft/sewa/android/app/R$id;->open_pdf:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->access$2002(Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;Landroid/view/View;)Landroid/view/View;

    .line 290
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity$3;->this$0:Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->access$2000(Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;)Landroid/view/View;

    move-result-object v1

    new-instance v3, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity$3$2;

    invoke-direct {v3, p0}, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity$3$2;-><init>(Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity$3;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 296
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity$3;->this$0:Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->access$2000(Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 298
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity$3;->this$0:Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;

    sget v3, Lcom/argusoft/sewa/android/app/R$id;->open_image:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->access$2202(Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;Landroid/view/View;)Landroid/view/View;

    .line 299
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity$3;->this$0:Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->access$2200(Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;)Landroid/view/View;

    move-result-object v1

    new-instance v3, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity$3$3;

    invoke-direct {v3, p0}, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity$3$3;-><init>(Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity$3;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 305
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity$3;->this$0:Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->access$2200(Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 307
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity$3;->this$0:Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;

    sget v3, Lcom/argusoft/sewa/android/app/R$id;->open_audio:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->access$2302(Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;Landroid/view/View;)Landroid/view/View;

    .line 308
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity$3;->this$0:Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->access$2300(Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;)Landroid/view/View;

    move-result-object v1

    new-instance v3, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity$3$4;

    invoke-direct {v3, p0}, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity$3$4;-><init>(Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity$3;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 314
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity$3;->this$0:Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->access$2300(Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 316
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity$3;->this$0:Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->access$2400(Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;)Landroid/view/View;

    move-result-object v1

    .line 317
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity$3;->this$0:Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->access$900(Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 319
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity$3;->this$0:Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->access$800(Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;)Landroid/widget/LinearLayout;

    move-result-object v1

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity$3;->this$0:Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->access$1500(Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;)Landroid/view/View;

    move-result-object v2

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const v4, 0x3c23d70a    # 0.01f

    const/4 v5, -0x1

    invoke-direct {v3, v5, v0, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 320
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity$3;->this$0:Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->access$800(Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;)Landroid/widget/LinearLayout;

    move-result-object v1

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity$3;->this$0:Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->access$900(Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;)Landroid/widget/LinearLayout;

    move-result-object v2

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const v4, 0x3d75c28f    # 0.06f

    invoke-direct {v3, v5, v0, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 321
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity$3;->this$0:Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->access$800(Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;)Landroid/widget/LinearLayout;

    move-result-object v1

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const v3, 0x3cf5c28f    # 0.03f

    invoke-direct {v2, v5, v0, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, p1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
