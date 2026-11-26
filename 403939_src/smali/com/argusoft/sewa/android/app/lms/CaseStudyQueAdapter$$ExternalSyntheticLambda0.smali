.class public final synthetic Lcom/argusoft/sewa/android/app/lms/CaseStudyQueAdapter$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# instance fields
.field public final synthetic f$0:Lcom/argusoft/sewa/android/app/lms/CaseStudyQueAdapter;

.field public final synthetic f$1:I

.field public final synthetic f$2:Landroid/widget/RadioGroup;


# direct methods
.method public synthetic constructor <init>(Lcom/argusoft/sewa/android/app/lms/CaseStudyQueAdapter;ILandroid/widget/RadioGroup;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/lms/CaseStudyQueAdapter$$ExternalSyntheticLambda0;->f$0:Lcom/argusoft/sewa/android/app/lms/CaseStudyQueAdapter;

    iput p2, p0, Lcom/argusoft/sewa/android/app/lms/CaseStudyQueAdapter$$ExternalSyntheticLambda0;->f$1:I

    iput-object p3, p0, Lcom/argusoft/sewa/android/app/lms/CaseStudyQueAdapter$$ExternalSyntheticLambda0;->f$2:Landroid/widget/RadioGroup;

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/CaseStudyQueAdapter$$ExternalSyntheticLambda0;->f$0:Lcom/argusoft/sewa/android/app/lms/CaseStudyQueAdapter;

    iget v1, p0, Lcom/argusoft/sewa/android/app/lms/CaseStudyQueAdapter$$ExternalSyntheticLambda0;->f$1:I

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/lms/CaseStudyQueAdapter$$ExternalSyntheticLambda0;->f$2:Landroid/widget/RadioGroup;

    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/argusoft/sewa/android/app/lms/CaseStudyQueAdapter;->lambda$onBindViewHolder$0$com-argusoft-sewa-android-app-lms-CaseStudyQueAdapter(ILandroid/widget/RadioGroup;Landroid/widget/RadioGroup;I)V

    return-void
.end method
