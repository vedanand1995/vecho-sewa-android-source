.class public Lcom/argusoft/sewa/android/app/lms/LmsCourseListAdaptor$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "LmsCourseListAdaptor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/argusoft/sewa/android/app/lms/LmsCourseListAdaptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewHolder"
.end annotation


# instance fields
.field courseImage:Landroid/widget/ImageView;

.field desc:Landroid/widget/TextView;

.field icon_menu:Landroid/widget/ImageView;

.field notification_badge:Landroid/widget/ImageView;

.field numberOfLessonsAndQuizzes:Landroid/widget/TextView;

.field progressBar:Landroid/widget/ProgressBar;

.field progressLayout:Landroid/widget/LinearLayout;

.field progressText:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/argusoft/sewa/android/app/lms/LmsCourseListAdaptor;

.field title:Landroid/widget/TextView;

.field warning_image:Landroidx/appcompat/widget/AppCompatImageView;


# direct methods
.method public constructor <init>(Lcom/argusoft/sewa/android/app/lms/LmsCourseListAdaptor;Landroid/view/View;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 246
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseListAdaptor$ViewHolder;->this$0:Lcom/argusoft/sewa/android/app/lms/LmsCourseListAdaptor;

    .line 247
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 248
    sget v0, Lcom/argusoft/sewa/android/app/R$id;->course_image:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseListAdaptor$ViewHolder;->courseImage:Landroid/widget/ImageView;

    .line 249
    sget v0, Lcom/argusoft/sewa/android/app/R$id;->notification_badge:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseListAdaptor$ViewHolder;->notification_badge:Landroid/widget/ImageView;

    .line 250
    sget v0, Lcom/argusoft/sewa/android/app/R$id;->icon_menu:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseListAdaptor$ViewHolder;->icon_menu:Landroid/widget/ImageView;

    .line 251
    sget v0, Lcom/argusoft/sewa/android/app/R$id;->size_warning:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatImageView;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseListAdaptor$ViewHolder;->warning_image:Landroidx/appcompat/widget/AppCompatImageView;

    .line 252
    sget v0, Lcom/argusoft/sewa/android/app/R$id;->course_title:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseListAdaptor$ViewHolder;->title:Landroid/widget/TextView;

    .line 253
    sget v0, Lcom/argusoft/sewa/android/app/R$id;->course_lessons_and_quizzes:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseListAdaptor$ViewHolder;->numberOfLessonsAndQuizzes:Landroid/widget/TextView;

    .line 254
    sget v0, Lcom/argusoft/sewa/android/app/R$id;->course_desc:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseListAdaptor$ViewHolder;->desc:Landroid/widget/TextView;

    .line 255
    sget v0, Lcom/argusoft/sewa/android/app/R$id;->course_progress_layout:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseListAdaptor$ViewHolder;->progressLayout:Landroid/widget/LinearLayout;

    .line 256
    sget v0, Lcom/argusoft/sewa/android/app/R$id;->course_progress_text:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseListAdaptor$ViewHolder;->progressText:Landroid/widget/TextView;

    .line 257
    sget v0, Lcom/argusoft/sewa/android/app/R$id;->course_progress_bar:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseListAdaptor$ViewHolder;->progressBar:Landroid/widget/ProgressBar;

    .line 258
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseListAdaptor$ViewHolder;->icon_menu:Landroid/widget/ImageView;

    new-instance v1, Lcom/argusoft/sewa/android/app/lms/LmsCourseListAdaptor$ViewHolder$1;

    invoke-direct {v1, p0, p1}, Lcom/argusoft/sewa/android/app/lms/LmsCourseListAdaptor$ViewHolder$1;-><init>(Lcom/argusoft/sewa/android/app/lms/LmsCourseListAdaptor$ViewHolder;Lcom/argusoft/sewa/android/app/lms/LmsCourseListAdaptor;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 264
    new-instance v0, Lcom/argusoft/sewa/android/app/lms/LmsCourseListAdaptor$ViewHolder$2;

    invoke-direct {v0, p0, p1}, Lcom/argusoft/sewa/android/app/lms/LmsCourseListAdaptor$ViewHolder$2;-><init>(Lcom/argusoft/sewa/android/app/lms/LmsCourseListAdaptor$ViewHolder;Lcom/argusoft/sewa/android/app/lms/LmsCourseListAdaptor;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
