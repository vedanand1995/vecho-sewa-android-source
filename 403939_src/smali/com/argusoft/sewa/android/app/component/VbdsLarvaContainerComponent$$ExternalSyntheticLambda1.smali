.class public final synthetic Lcom/argusoft/sewa/android/app/component/VbdsLarvaContainerComponent$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field public final synthetic f$0:Lcom/argusoft/sewa/android/app/component/VbdsLarvaContainerComponent;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Lcom/google/android/material/checkbox/MaterialCheckBox;

.field public final synthetic f$3:[Lcom/argusoft/sewa/android/app/component/VbdsLarvaContainerComponent$CountSection;

.field public final synthetic f$4:Landroid/widget/LinearLayout;


# direct methods
.method public synthetic constructor <init>(Lcom/argusoft/sewa/android/app/component/VbdsLarvaContainerComponent;Ljava/lang/String;Lcom/google/android/material/checkbox/MaterialCheckBox;[Lcom/argusoft/sewa/android/app/component/VbdsLarvaContainerComponent$CountSection;Landroid/widget/LinearLayout;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/VbdsLarvaContainerComponent$$ExternalSyntheticLambda1;->f$0:Lcom/argusoft/sewa/android/app/component/VbdsLarvaContainerComponent;

    iput-object p2, p0, Lcom/argusoft/sewa/android/app/component/VbdsLarvaContainerComponent$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/argusoft/sewa/android/app/component/VbdsLarvaContainerComponent$$ExternalSyntheticLambda1;->f$2:Lcom/google/android/material/checkbox/MaterialCheckBox;

    iput-object p4, p0, Lcom/argusoft/sewa/android/app/component/VbdsLarvaContainerComponent$$ExternalSyntheticLambda1;->f$3:[Lcom/argusoft/sewa/android/app/component/VbdsLarvaContainerComponent$CountSection;

    iput-object p5, p0, Lcom/argusoft/sewa/android/app/component/VbdsLarvaContainerComponent$$ExternalSyntheticLambda1;->f$4:Landroid/widget/LinearLayout;

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 7

    .line 0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/VbdsLarvaContainerComponent$$ExternalSyntheticLambda1;->f$0:Lcom/argusoft/sewa/android/app/component/VbdsLarvaContainerComponent;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/VbdsLarvaContainerComponent$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/component/VbdsLarvaContainerComponent$$ExternalSyntheticLambda1;->f$2:Lcom/google/android/material/checkbox/MaterialCheckBox;

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/component/VbdsLarvaContainerComponent$$ExternalSyntheticLambda1;->f$3:[Lcom/argusoft/sewa/android/app/component/VbdsLarvaContainerComponent$CountSection;

    iget-object v4, p0, Lcom/argusoft/sewa/android/app/component/VbdsLarvaContainerComponent$$ExternalSyntheticLambda1;->f$4:Landroid/widget/LinearLayout;

    move-object v5, p1

    move v6, p2

    invoke-virtual/range {v0 .. v6}, Lcom/argusoft/sewa/android/app/component/VbdsLarvaContainerComponent;->lambda$buildFamilyRow$1$com-argusoft-sewa-android-app-component-VbdsLarvaContainerComponent(Ljava/lang/String;Lcom/google/android/material/checkbox/MaterialCheckBox;[Lcom/argusoft/sewa/android/app/component/VbdsLarvaContainerComponent$CountSection;Landroid/widget/LinearLayout;Landroid/widget/CompoundButton;Z)V

    return-void
.end method
