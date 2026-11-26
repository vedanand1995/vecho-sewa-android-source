.class public Lcom/argusoft/sewa/android/app/component/MyVaccinationStatus;
.super Ljava/lang/Object;
.source "MyVaccinationStatus.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/argusoft/sewa/android/app/component/MyVaccinationStatus$GivenStatus;
    }
.end annotation


# static fields
.field private static final RADIO_BUTTON_ID_NO:Ljava/lang/Integer;

.field private static final RADIO_BUTTON_ID_YES:Ljava/lang/Integer;


# instance fields
.field private final context:Landroid/content/Context;

.field private customDatePicker:Landroid/widget/LinearLayout;

.field private dateOfTaken:J

.field private isTaken:Lcom/argusoft/sewa/android/app/component/MyVaccinationStatus$GivenStatus;

.field private mainLayout:Landroid/widget/LinearLayout;

.field private name:Ljava/lang/String;

.field private final parent:Lcom/argusoft/sewa/android/app/component/MyVaccination;

.field private txtDate:Lcom/google/android/material/textview/MaterialTextView;

.field private validation:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/ValidationTagBean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    .line 40
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/argusoft/sewa/android/app/component/MyVaccinationStatus;->RADIO_BUTTON_ID_YES:Ljava/lang/Integer;

    const/4 v0, 0x1

    .line 41
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/argusoft/sewa/android/app/component/MyVaccinationStatus;->RADIO_BUTTON_ID_NO:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/argusoft/sewa/android/app/component/MyVaccination;Ljava/lang/String;Lcom/argusoft/sewa/android/app/component/MyVaccinationStatus$GivenStatus;JLjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/argusoft/sewa/android/app/component/MyVaccination;",
            "Ljava/lang/String;",
            "Lcom/argusoft/sewa/android/app/component/MyVaccinationStatus$GivenStatus;",
            "J",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/ValidationTagBean;",
            ">;)V"
        }
    .end annotation

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/MyVaccinationStatus;->context:Landroid/content/Context;

    .line 45
    iput-object p2, p0, Lcom/argusoft/sewa/android/app/component/MyVaccinationStatus;->parent:Lcom/argusoft/sewa/android/app/component/MyVaccination;

    .line 46
    iput-object p3, p0, Lcom/argusoft/sewa/android/app/component/MyVaccinationStatus;->name:Ljava/lang/String;

    .line 47
    iput-object p4, p0, Lcom/argusoft/sewa/android/app/component/MyVaccinationStatus;->isTaken:Lcom/argusoft/sewa/android/app/component/MyVaccinationStatus$GivenStatus;

    .line 48
    iput-wide p5, p0, Lcom/argusoft/sewa/android/app/component/MyVaccinationStatus;->dateOfTaken:J

    .line 49
    iput-object p7, p0, Lcom/argusoft/sewa/android/app/component/MyVaccinationStatus;->validation:Ljava/util/List;

    .line 51
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/component/MyVaccinationStatus;->setLayout()V

    return-void
.end method

.method private setLayout()V
    .locals 8

    .line 56
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/MyVaccinationStatus;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/MyVaccinationStatus;->name:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v5, 0x1

    invoke-static {v0, v1, v5, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getLinearLayout(Landroid/content/Context;IILandroid/widget/LinearLayout$LayoutParams;)Landroid/widget/LinearLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/component/MyVaccinationStatus;->mainLayout:Landroid/widget/LinearLayout;

    .line 59
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/MyVaccinationStatus;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/component/MyVaccinationStatus;->name:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/constants/FullFormConstants;->getFullFormOfVaccines(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateSubTitleView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 62
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/MyVaccinationStatus;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VITAMIN_A"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/MyVaccinationStatus;->mainLayout:Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/argusoft/sewa/android/app/component/MyVaccinationStatus;->context:Landroid/content/Context;

    const-string v7, "Is it given?"

    invoke-static {v2, v2, v6, v7}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/MyVaccinationStatus;->mainLayout:Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/argusoft/sewa/android/app/component/MyVaccinationStatus;->context:Landroid/content/Context;

    const-string v7, "Vaccination is given?"

    invoke-static {v2, v2, v6, v7}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 68
    :goto_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 69
    sget-object v6, Lcom/argusoft/sewa/android/app/component/MyVaccinationStatus;->RADIO_BUTTON_ID_YES:Ljava/lang/Integer;

    const-string v7, "Yes"

    invoke-virtual {v0, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    sget-object v6, Lcom/argusoft/sewa/android/app/component/MyVaccinationStatus;->RADIO_BUTTON_ID_NO:Ljava/lang/Integer;

    const-string v7, "No"

    invoke-virtual {v0, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    iget-object v6, p0, Lcom/argusoft/sewa/android/app/component/MyVaccinationStatus;->context:Landroid/content/Context;

    invoke-static {v6, v0, v5}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getRadioGroup(Landroid/content/Context;Ljava/util/Map;Z)Landroid/widget/RadioGroup;

    move-result-object v0

    .line 72
    iget-object v6, p0, Lcom/argusoft/sewa/android/app/component/MyVaccinationStatus;->parent:Lcom/argusoft/sewa/android/app/component/MyVaccination;

    invoke-virtual {v0, v6}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 73
    iget-object v6, p0, Lcom/argusoft/sewa/android/app/component/MyVaccinationStatus;->mainLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 76
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/MyVaccinationStatus;->context:Landroid/content/Context;

    iget-object v6, p0, Lcom/argusoft/sewa/android/app/component/MyVaccinationStatus;->name:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v6

    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v7, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-static {v0, v6, v5, v7}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getLinearLayout(Landroid/content/Context;IILandroid/widget/LinearLayout$LayoutParams;)Landroid/widget/LinearLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/component/MyVaccinationStatus;->customDatePicker:Landroid/widget/LinearLayout;

    .line 77
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/MyVaccinationStatus;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 78
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/MyVaccinationStatus;->customDatePicker:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/MyVaccinationStatus;->context:Landroid/content/Context;

    const-string v3, "Date"

    invoke-static {v2, v2, v1, v3}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_1

    .line 80
    :cond_1
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/MyVaccinationStatus;->customDatePicker:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/MyVaccinationStatus;->context:Landroid/content/Context;

    const-string v3, "Date of vaccination"

    invoke-static {v2, v2, v1, v3}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 83
    :goto_1
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/MyVaccinationStatus;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/MyVaccinationStatus;->parent:Lcom/argusoft/sewa/android/app/component/MyVaccination;

    const/16 v2, 0x868

    invoke-static {v0, v1, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getCustomDatePickerForStatic(Landroid/content/Context;Landroid/view/View$OnClickListener;I)Landroid/widget/LinearLayout;

    move-result-object v0

    const/16 v1, 0x2711

    .line 84
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/textview/MaterialTextView;

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/component/MyVaccinationStatus;->txtDate:Lcom/google/android/material/textview/MaterialTextView;

    .line 85
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/MyVaccinationStatus;->customDatePicker:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 87
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/MyVaccinationStatus;->customDatePicker:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 88
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/MyVaccinationStatus;->mainLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/MyVaccinationStatus;->customDatePicker:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 89
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/component/MyVaccinationStatus;->setVisibility(Z)V

    return-void
.end method


# virtual methods
.method public getAnswerString()Ljava/lang/String;
    .locals 3

    .line 119
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/component/MyVaccinationStatus;->isValid()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 121
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/MyVaccinationStatus;->isTaken:Lcom/argusoft/sewa/android/app/component/MyVaccinationStatus$GivenStatus;

    sget-object v1, Lcom/argusoft/sewa/android/app/component/MyVaccinationStatus$GivenStatus;->YES:Lcom/argusoft/sewa/android/app/component/MyVaccinationStatus$GivenStatus;

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/component/MyVaccinationStatus$GivenStatus;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "/"

    if-eqz v0, :cond_0

    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/component/MyVaccinationStatus;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/component/MyVaccinationStatus;->isTaken:Lcom/argusoft/sewa/android/app/component/MyVaccinationStatus$GivenStatus;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/component/MyVaccinationStatus$GivenStatus;->getValue()C

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/argusoft/sewa/android/app/component/MyVaccinationStatus;->dateOfTaken:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/MyVaccinationStatus;->isTaken:Lcom/argusoft/sewa/android/app/component/MyVaccinationStatus$GivenStatus;

    sget-object v2, Lcom/argusoft/sewa/android/app/component/MyVaccinationStatus$GivenStatus;->NO:Lcom/argusoft/sewa/android/app/component/MyVaccinationStatus$GivenStatus;

    invoke-virtual {v0, v2}, Lcom/argusoft/sewa/android/app/component/MyVaccinationStatus$GivenStatus;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 124
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/component/MyVaccinationStatus;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/MyVaccinationStatus;->isTaken:Lcom/argusoft/sewa/android/app/component/MyVaccinationStatus$GivenStatus;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/component/MyVaccinationStatus$GivenStatus;->getValue()C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDateOfTaken()J
    .locals 2

    .line 147
    iget-wide v0, p0, Lcom/argusoft/sewa/android/app/component/MyVaccinationStatus;->dateOfTaken:J

    return-wide v0
.end method

.method public getIsTaken()Lcom/argusoft/sewa/android/app/component/MyVaccinationStatus$GivenStatus;
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/MyVaccinationStatus;->isTaken:Lcom/argusoft/sewa/android/app/component/MyVaccinationStatus$GivenStatus;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/MyVaccinationStatus;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getTxtDate()Ljava/lang/String;
    .locals 1

    .line 158
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/MyVaccinationStatus;->txtDate:Lcom/google/android/material/textview/MaterialTextView;

    if-eqz v0, :cond_0

    .line 159
    invoke-virtual {v0}, Lcom/google/android/material/textview/MaterialTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 161
    :cond_0
    const-string v0, "Select date"

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVaccinationView()Landroid/widget/LinearLayout;
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/MyVaccinationStatus;->mainLayout:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    .line 94
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/component/MyVaccinationStatus;->setLayout()V

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/MyVaccinationStatus;->mainLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public getValidation()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/ValidationTagBean;",
            ">;"
        }
    .end annotation

    .line 181
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/MyVaccinationStatus;->validation:Ljava/util/List;

    return-object v0
.end method

.method public isValid()Ljava/lang/String;
    .locals 5

    .line 110
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/MyVaccinationStatus;->isTaken:Lcom/argusoft/sewa/android/app/component/MyVaccinationStatus$GivenStatus;

    sget-object v1, Lcom/argusoft/sewa/android/app/component/MyVaccinationStatus$GivenStatus;->NULL:Lcom/argusoft/sewa/android/app/component/MyVaccinationStatus$GivenStatus;

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/component/MyVaccinationStatus$GivenStatus;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    const-string v0, "Vaccination is given?"

    return-object v0

    .line 112
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/MyVaccinationStatus;->isTaken:Lcom/argusoft/sewa/android/app/component/MyVaccinationStatus$GivenStatus;

    sget-object v1, Lcom/argusoft/sewa/android/app/component/MyVaccinationStatus$GivenStatus;->YES:Lcom/argusoft/sewa/android/app/component/MyVaccinationStatus$GivenStatus;

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/component/MyVaccinationStatus$GivenStatus;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lcom/argusoft/sewa/android/app/component/MyVaccinationStatus;->dateOfTaken:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    .line 113
    const-string v0, "Date of vaccination is required"

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public setDateOfTaken(J)V
    .locals 4

    .line 151
    iput-wide p1, p0, Lcom/argusoft/sewa/android/app/component/MyVaccinationStatus;->dateOfTaken:J

    .line 152
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/MyVaccinationStatus;->txtDate:Lcom/google/android/material/textview/MaterialTextView;

    if-eqz v0, :cond_0

    const-wide/16 v1, 0x0

    cmp-long v3, p1, v1

    if-nez v3, :cond_0

    .line 153
    const-string p1, "Select date"

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/material/textview/MaterialTextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setIsTaken(Lcom/argusoft/sewa/android/app/component/MyVaccinationStatus$GivenStatus;)V
    .locals 0

    .line 143
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/MyVaccinationStatus;->isTaken:Lcom/argusoft/sewa/android/app/component/MyVaccinationStatus$GivenStatus;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 135
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/MyVaccinationStatus;->name:Ljava/lang/String;

    return-void
.end method

.method public setTextDate(Ljava/lang/String;)V
    .locals 1

    .line 165
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/MyVaccinationStatus;->txtDate:Lcom/google/android/material/textview/MaterialTextView;

    if-eqz v0, :cond_0

    .line 166
    invoke-static {p1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/material/textview/MaterialTextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setValidation(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/ValidationTagBean;",
            ">;)V"
        }
    .end annotation

    .line 185
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/MyVaccinationStatus;->validation:Ljava/util/List;

    return-void
.end method

.method public setVisibility(Z)V
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/MyVaccinationStatus;->mainLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 102
    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    .line 104
    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public showDatePicker(Z)V
    .locals 1

    .line 171
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/MyVaccinationStatus;->customDatePicker:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 173
    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    .line 175
    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 191
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "VaccinationStatus{name="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/MyVaccinationStatus;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", isTaken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/MyVaccinationStatus;->isTaken:Lcom/argusoft/sewa/android/app/component/MyVaccinationStatus$GivenStatus;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", dateOfTaken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/argusoft/sewa/android/app/component/MyVaccinationStatus;->dateOfTaken:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", validation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/MyVaccinationStatus;->validation:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
