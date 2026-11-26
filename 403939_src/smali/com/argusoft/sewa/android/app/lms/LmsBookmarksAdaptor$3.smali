.class Lcom/argusoft/sewa/android/app/lms/LmsBookmarksAdaptor$3;
.super Ljava/lang/Object;
.source "LmsBookmarksAdaptor.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/lms/LmsBookmarksAdaptor;->getEditListener(ILcom/argusoft/sewa/android/app/model/LmsBookMarkBean;)Landroid/view/View$OnClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/argusoft/sewa/android/app/lms/LmsBookmarksAdaptor;

.field final synthetic val$bookMarkBean:Lcom/argusoft/sewa/android/app/model/LmsBookMarkBean;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/lms/LmsBookmarksAdaptor;Lcom/argusoft/sewa/android/app/model/LmsBookMarkBean;I)V
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

    .line 162
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/lms/LmsBookmarksAdaptor$3;->this$0:Lcom/argusoft/sewa/android/app/lms/LmsBookmarksAdaptor;

    iput-object p2, p0, Lcom/argusoft/sewa/android/app/lms/LmsBookmarksAdaptor$3;->val$bookMarkBean:Lcom/argusoft/sewa/android/app/model/LmsBookMarkBean;

    iput p3, p0, Lcom/argusoft/sewa/android/app/lms/LmsBookmarksAdaptor$3;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 165
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/LmsBookmarksAdaptor$3;->this$0:Lcom/argusoft/sewa/android/app/lms/LmsBookmarksAdaptor;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/lms/LmsBookmarksAdaptor;->access$400(Lcom/argusoft/sewa/android/app/lms/LmsBookmarksAdaptor;)Lcom/argusoft/sewa/android/app/lms/MyVideoView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/LmsBookmarksAdaptor$3;->this$0:Lcom/argusoft/sewa/android/app/lms/LmsBookmarksAdaptor;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/lms/LmsBookmarksAdaptor;->access$400(Lcom/argusoft/sewa/android/app/lms/LmsBookmarksAdaptor;)Lcom/argusoft/sewa/android/app/lms/MyVideoView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/LmsBookmarksAdaptor$3;->this$0:Lcom/argusoft/sewa/android/app/lms/LmsBookmarksAdaptor;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/lms/LmsBookmarksAdaptor;->access$400(Lcom/argusoft/sewa/android/app/lms/LmsBookmarksAdaptor;)Lcom/argusoft/sewa/android/app/lms/MyVideoView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->pause()V

    .line 169
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/LmsBookmarksAdaptor$3;->this$0:Lcom/argusoft/sewa/android/app/lms/LmsBookmarksAdaptor;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/lms/LmsBookmarksAdaptor;->access$000(Lcom/argusoft/sewa/android/app/lms/LmsBookmarksAdaptor;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/argusoft/sewa/android/app/R$layout;->text_popup_window:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 172
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 173
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/lms/LmsBookmarksAdaptor$3;->this$0:Lcom/argusoft/sewa/android/app/lms/LmsBookmarksAdaptor;

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/lms/LmsBookmarksAdaptor;->access$000(Lcom/argusoft/sewa/android/app/lms/LmsBookmarksAdaptor;)Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {v2}, Landroidx/appcompat/app/AppCompatActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 175
    new-instance v2, Landroid/widget/PopupWindow;

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    mul-int/lit8 v1, v1, 0x8

    div-int/lit8 v1, v1, 0xa

    const/4 v3, -0x1

    const/4 v4, 0x1

    invoke-direct {v2, v0, v1, v3, v4}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    const/16 v1, 0x11

    const/4 v3, 0x0

    .line 176
    invoke-virtual {v2, p1, v1, v3, v3}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 178
    sget p1, Lcom/argusoft/sewa/android/app/R$id;->popup_button:I

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 179
    const-string v1, "Update"

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 180
    sget v1, Lcom/argusoft/sewa/android/app/R$id;->popup_note:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/textfield/TextInputLayout;

    .line 181
    invoke-virtual {v1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v3

    iget-object v4, p0, Lcom/argusoft/sewa/android/app/lms/LmsBookmarksAdaptor$3;->val$bookMarkBean:Lcom/argusoft/sewa/android/app/model/LmsBookMarkBean;

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/model/LmsBookMarkBean;->getBookmarkNote()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 182
    new-instance v3, Lcom/argusoft/sewa/android/app/lms/LmsBookmarksAdaptor$3$1;

    invoke-direct {v3, p0, v1, v2}, Lcom/argusoft/sewa/android/app/lms/LmsBookmarksAdaptor$3$1;-><init>(Lcom/argusoft/sewa/android/app/lms/LmsBookmarksAdaptor$3;Lcom/google/android/material/textfield/TextInputLayout;Landroid/widget/PopupWindow;)V

    invoke-virtual {p1, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 201
    sget p1, Lcom/argusoft/sewa/android/app/R$id;->mic_button:I

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    .line 202
    new-instance v0, Lcom/argusoft/sewa/android/app/lms/LmsBookmarksAdaptor$3$2;

    invoke-direct {v0, p0, p1}, Lcom/argusoft/sewa/android/app/lms/LmsBookmarksAdaptor$3$2;-><init>(Lcom/argusoft/sewa/android/app/lms/LmsBookmarksAdaptor$3;Landroid/widget/ImageButton;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
