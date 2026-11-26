.class public final synthetic Lcom/argusoft/sewa/android/app/component/ImmunisationSelectionComponent$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/app/DatePickerDialog$OnDateSetListener;


# instance fields
.field public final synthetic f$0:Lcom/argusoft/sewa/android/app/component/ImmunisationSelectionComponent;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Lcom/google/android/material/textview/MaterialTextView;

.field public final synthetic f$3:Landroid/widget/ImageView;


# direct methods
.method public synthetic constructor <init>(Lcom/argusoft/sewa/android/app/component/ImmunisationSelectionComponent;Ljava/lang/String;Lcom/google/android/material/textview/MaterialTextView;Landroid/widget/ImageView;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/ImmunisationSelectionComponent$$ExternalSyntheticLambda0;->f$0:Lcom/argusoft/sewa/android/app/component/ImmunisationSelectionComponent;

    iput-object p2, p0, Lcom/argusoft/sewa/android/app/component/ImmunisationSelectionComponent$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/argusoft/sewa/android/app/component/ImmunisationSelectionComponent$$ExternalSyntheticLambda0;->f$2:Lcom/google/android/material/textview/MaterialTextView;

    iput-object p4, p0, Lcom/argusoft/sewa/android/app/component/ImmunisationSelectionComponent$$ExternalSyntheticLambda0;->f$3:Landroid/widget/ImageView;

    return-void
.end method


# virtual methods
.method public final onDateSet(Landroid/widget/DatePicker;III)V
    .locals 8

    .line 0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/ImmunisationSelectionComponent$$ExternalSyntheticLambda0;->f$0:Lcom/argusoft/sewa/android/app/component/ImmunisationSelectionComponent;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/ImmunisationSelectionComponent$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/component/ImmunisationSelectionComponent$$ExternalSyntheticLambda0;->f$2:Lcom/google/android/material/textview/MaterialTextView;

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/component/ImmunisationSelectionComponent$$ExternalSyntheticLambda0;->f$3:Landroid/widget/ImageView;

    move-object v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    invoke-virtual/range {v0 .. v7}, Lcom/argusoft/sewa/android/app/component/ImmunisationSelectionComponent;->lambda$getDateSetListener$3$com-argusoft-sewa-android-app-component-ImmunisationSelectionComponent(Ljava/lang/String;Lcom/google/android/material/textview/MaterialTextView;Landroid/widget/ImageView;Landroid/widget/DatePicker;III)V

    return-void
.end method
