.class public Lcom/argusoft/sewa/android/app/component/MyDynamicComponents;
.super Ljava/lang/Object;
.source "MyDynamicComponents.java"


# static fields
.field private static final OPTIONAL_IF_UNDER_18_FLAG:Ljava/lang/String; = "optionalIfUnder18"

.field private static moreDetailsDisplayed:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;)V
    .locals 0

    .line 152
    invoke-static {p0, p1}, Lcom/argusoft/sewa/android/app/component/MyDynamicComponents;->exposeVillagesUnderSelectedBlock(Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;)V

    return-void
.end method

.method static synthetic access$100(Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)V
    .locals 0

    .line 152
    invoke-static {p0}, Lcom/argusoft/sewa/android/app/component/MyDynamicComponents;->clearExposedVillagesUnderSelectedBlock(Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)V

    return-void
.end method

.method static synthetic access$200()Z
    .locals 1

    .line 152
    sget-boolean v0, Lcom/argusoft/sewa/android/app/component/MyDynamicComponents;->moreDetailsDisplayed:Z

    return v0
.end method

.method static synthetic access$202(Z)Z
    .locals 0

    .line 152
    sput-boolean p0, Lcom/argusoft/sewa/android/app/component/MyDynamicComponents;->moreDetailsDisplayed:Z

    return p0
.end method

.method static synthetic access$300(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/util/List;)V
    .locals 0

    .line 152
    invoke-static {p0, p1, p2}, Lcom/argusoft/sewa/android/app/component/MyDynamicComponents;->setData(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$400(Ljava/util/List;Ljava/util/List;Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)V
    .locals 0

    .line 152
    invoke-static {p0, p1, p2}, Lcom/argusoft/sewa/android/app/component/MyDynamicComponents;->validateAllTestsSelected(Ljava/util/List;Ljava/util/List;Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)V

    return-void
.end method

.method public static checkValidationForBMI(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/material/textview/MaterialTextView;Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;Ljava/lang/String;)V
    .locals 7

    .line 1027
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const-string v1, "Please Enter valid height"

    const-string v2, "Not available"

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    .line 1028
    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/google/android/material/textview/MaterialTextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz p3, :cond_7

    .line 1030
    invoke-virtual {p3, v1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setMandatorymessage(Ljava/lang/String;)V

    .line 1031
    invoke-virtual {p3, v3}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 1033
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const-string v4, "Please Enter valid weight"

    if-eqz v0, :cond_1

    .line 1034
    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/google/android/material/textview/MaterialTextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz p3, :cond_7

    .line 1036
    invoke-virtual {p3, v4}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setMandatorymessage(Ljava/lang/String;)V

    .line 1037
    invoke-virtual {p3, v3}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 1041
    :cond_1
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1042
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    const/16 v6, 0x3c

    if-lt v0, v6, :cond_6

    const/16 v6, 0xfa

    if-le v0, v6, :cond_2

    goto :goto_1

    :cond_2
    const/high16 v6, 0x41200000    # 10.0f

    cmpg-float v6, v5, v6

    if-ltz v6, :cond_5

    const/high16 v6, 0x43160000    # 150.0f

    cmpl-float v6, v5, v6

    if-lez v6, :cond_3

    goto :goto_0

    .line 1053
    :cond_3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/argusoft/sewa/android/app/util/UtilBean;->calculateBmi(Ljava/lang/Integer;Ljava/lang/Float;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 1055
    invoke-virtual {p2, v0}, Lcom/google/android/material/textview/MaterialTextView;->setText(Ljava/lang/CharSequence;)V

    .line 1056
    const-string v4, "%s/%s/%s"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p0, v5, v6

    const/4 p0, 0x1

    aput-object p1, v5, p0

    const/4 p0, 0x2

    aput-object v0, v5, p0

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    goto :goto_2

    .line 1058
    :cond_4
    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/google/android/material/textview/MaterialTextView;->setText(Ljava/lang/CharSequence;)V

    .line 1059
    invoke-virtual {p3, v4}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setMandatorymessage(Ljava/lang/String;)V

    .line 1060
    invoke-virtual {p3, v3}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    goto :goto_2

    .line 1049
    :cond_5
    :goto_0
    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/google/android/material/textview/MaterialTextView;->setText(Ljava/lang/CharSequence;)V

    .line 1050
    const-string p0, "Please Enter Weight between 10 and 150 Kgs."

    invoke-virtual {p3, p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setMandatorymessage(Ljava/lang/String;)V

    .line 1051
    invoke-virtual {p3, v3}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    goto :goto_2

    .line 1045
    :cond_6
    :goto_1
    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/google/android/material/textview/MaterialTextView;->setText(Ljava/lang/CharSequence;)V

    .line 1046
    const-string p0, "Please Enter Height between 60 and 250 cms."

    invoke-virtual {p3, p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setMandatorymessage(Ljava/lang/String;)V

    .line 1047
    invoke-virtual {p3, v3}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 1064
    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/google/android/material/textview/MaterialTextView;->setText(Ljava/lang/CharSequence;)V

    .line 1065
    invoke-virtual {p3, v1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setMandatorymessage(Ljava/lang/String;)V

    .line 1066
    invoke-virtual {p3, v3}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    .line 1067
    invoke-static {p4, v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_7
    :goto_2
    return-void
.end method

.method public static checkValidationForBMIAdolescent(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/material/textview/MaterialTextView;Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;Ljava/lang/String;)V
    .locals 10

    .line 1174
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const-string v1, "Not available"

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 1175
    invoke-virtual {p2, v1}, Lcom/google/android/material/textview/MaterialTextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz p3, :cond_b

    .line 1177
    const-string p0, "Please enter height"

    invoke-virtual {p3, p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setMandatorymessage(Ljava/lang/String;)V

    .line 1178
    invoke-virtual {p3, v2}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 1180
    :cond_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/16 v3, 0x64

    if-lt v0, v3, :cond_a

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/16 v3, 0xaf

    if-le v0, v3, :cond_1

    goto/16 :goto_2

    .line 1184
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1185
    invoke-virtual {p2, v1}, Lcom/google/android/material/textview/MaterialTextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz p3, :cond_b

    .line 1187
    const-string p0, "Please enter weight"

    invoke-virtual {p3, p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setMandatorymessage(Ljava/lang/String;)V

    .line 1188
    invoke-virtual {p3, v2}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 1190
    :cond_2
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    const/high16 v3, 0x40a00000    # 5.0f

    cmpg-float v0, v0, v3

    if-ltz v0, :cond_9

    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    const/high16 v3, 0x428c0000    # 70.0f

    cmpl-float v0, v0, v3

    if-lez v0, :cond_3

    goto/16 :goto_1

    .line 1196
    :cond_3
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1197
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    .line 1198
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->calculateBmi(Ljava/lang/Integer;Ljava/lang/Float;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 1200
    const-string v3, ""

    .line 1201
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    const-wide v5, 0x4032800000000000L    # 18.5

    if-lez v4, :cond_4

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    float-to-double v7, v4

    cmpg-double v4, v7, v5

    if-gtz v4, :cond_4

    .line 1202
    const-string v3, "Under weight"

    invoke-static {v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 1203
    :cond_4
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    const/high16 v7, 0x41c80000    # 25.0f

    if-lez v4, :cond_5

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    float-to-double v8, v4

    cmpl-double v4, v8, v5

    if-lez v4, :cond_5

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    cmpg-float v4, v4, v7

    if-gtz v4, :cond_5

    .line 1204
    const-string v3, "Normal"

    invoke-static {v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 1205
    :cond_5
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_6

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    cmpl-float v4, v4, v7

    if-lez v4, :cond_6

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    float-to-double v4, v4

    const-wide v6, 0x403de66666666666L    # 29.9

    cmpg-double v8, v4, v6

    if-gtz v8, :cond_6

    .line 1206
    const-string v3, "Over weight"

    invoke-static {v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 1207
    :cond_6
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_7

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    const/high16 v5, 0x41f00000    # 30.0f

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_7

    .line 1208
    const-string v3, "Obese"

    invoke-static {v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1210
    :cond_7
    :goto_0
    const-string v4, "%s - %s"

    const/4 v5, 0x2

    new-array v6, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v0, v6, v7

    const/4 v8, 0x1

    aput-object v3, v6, v8

    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Lcom/google/android/material/textview/MaterialTextView;->setText(Ljava/lang/CharSequence;)V

    .line 1211
    const-string v3, "%s/%s/%s"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p0, v4, v7

    aput-object p1, v4, v8

    aput-object v0, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    goto :goto_3

    .line 1213
    :cond_8
    invoke-virtual {p2, v1}, Lcom/google/android/material/textview/MaterialTextView;->setText(Ljava/lang/CharSequence;)V

    .line 1214
    const-string p0, "Please Enter valid weight"

    invoke-virtual {p3, p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setMandatorymessage(Ljava/lang/String;)V

    .line 1215
    invoke-virtual {p3, v2}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p0

    .line 1218
    invoke-virtual {p2, v1}, Lcom/google/android/material/textview/MaterialTextView;->setText(Ljava/lang/CharSequence;)V

    .line 1219
    const-string p1, "Please Enter valid height"

    invoke-virtual {p3, p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setMandatorymessage(Ljava/lang/String;)V

    .line 1220
    invoke-virtual {p3, v2}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    .line 1221
    invoke-static {p4, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 1191
    :cond_9
    :goto_1
    invoke-virtual {p2, v1}, Lcom/google/android/material/textview/MaterialTextView;->setText(Ljava/lang/CharSequence;)V

    .line 1192
    const-string p0, "Please Enter Weight between 5 and 70 Kgs."

    invoke-virtual {p3, p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setMandatorymessage(Ljava/lang/String;)V

    .line 1193
    invoke-virtual {p3, v2}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    goto :goto_3

    .line 1181
    :cond_a
    :goto_2
    invoke-virtual {p2, v1}, Lcom/google/android/material/textview/MaterialTextView;->setText(Ljava/lang/CharSequence;)V

    .line 1182
    const-string p0, "Please Enter Height between 100 and 175 cms."

    invoke-virtual {p3, p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setMandatorymessage(Ljava/lang/String;)V

    .line 1183
    invoke-virtual {p3, v2}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    :cond_b
    :goto_3
    return-void
.end method

.method public static checkValidationForHB(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/material/textview/MaterialTextView;Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    .line 1293
    const-string v0, "Normal"

    const-string v1, "Mild"

    const-string v2, "Moderate"

    const-string v3, "Severe"

    .line 1294
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    const/4 v5, 0x0

    const-string v6, "Not available"

    const-string v7, ""

    if-eqz v4, :cond_0

    .line 1295
    invoke-static {v6}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/google/android/material/textview/MaterialTextView;->setText(Ljava/lang/CharSequence;)V

    .line 1296
    sget p1, Lcom/argusoft/sewa/android/app/R$color;->black:I

    invoke-static {p0, p1}, Landroidx/core/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/google/android/material/textview/MaterialTextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    if-eqz p3, :cond_7

    .line 1298
    const-string p0, "Please enter valid haemoglobin"

    invoke-virtual {p3, p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setMandatorymessage(Ljava/lang/String;)V

    .line 1299
    invoke-virtual {p3, v5}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 1303
    :cond_0
    :try_start_0
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    .line 1304
    invoke-static {v6}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Lcom/google/android/material/textview/MaterialTextView;->setText(Ljava/lang/CharSequence;)V

    .line 1305
    sget v4, Lcom/argusoft/sewa/android/app/R$color;->textColor:I

    invoke-static {p0, v4}, Landroidx/core/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v4

    invoke-virtual {p2, v4}, Lcom/google/android/material/textview/MaterialTextView;->setTextColor(Landroid/content/res/ColorStateList;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5

    const/high16 v4, 0x40400000    # 3.0f

    .line 1308
    const-string v7, "Please enter haemoglobin value between 3 to 17"

    cmpg-float v8, p1, v4

    if-gez v8, :cond_1

    .line 1309
    :try_start_1
    invoke-static {v7}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/google/android/material/textview/MaterialTextView;->setText(Ljava/lang/CharSequence;)V

    .line 1310
    sget p1, Lcom/argusoft/sewa/android/app/R$color;->textColor:I

    invoke-static {p0, p1}, Landroidx/core/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/google/android/material/textview/MaterialTextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 1312
    invoke-virtual {p3, v7}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setMandatorymessage(Ljava/lang/String;)V

    .line 1313
    invoke-virtual {p3, v5}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    goto/16 :goto_0

    :catch_0
    move-exception p0

    move-object v0, v6

    goto/16 :goto_1

    :cond_1
    const/high16 v8, 0x40e00000    # 7.0f

    cmpl-float v4, p1, v4

    if-ltz v4, :cond_2

    cmpg-float v4, p1, v8

    if-gtz v4, :cond_2

    .line 1316
    invoke-static {v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/google/android/material/textview/MaterialTextView;->setText(Ljava/lang/CharSequence;)V

    .line 1317
    sget v0, Lcom/argusoft/sewa/android/app/R$color;->pregnantWomenTextColor:I

    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/google/android/material/textview/MaterialTextView;->setTextColor(Landroid/content/res/ColorStateList;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1319
    :try_start_2
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    invoke-virtual {p3, p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-object v0, v3

    goto/16 :goto_2

    :catch_1
    move-exception p0

    move-object v0, v3

    goto/16 :goto_1

    :cond_2
    const/high16 v3, 0x41100000    # 9.0f

    cmpl-float v4, p1, v8

    if-ltz v4, :cond_3

    cmpg-float v4, p1, v3

    if-gtz v4, :cond_3

    .line 1322
    :try_start_3
    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/google/android/material/textview/MaterialTextView;->setText(Ljava/lang/CharSequence;)V

    .line 1323
    sget v0, Lcom/argusoft/sewa/android/app/R$color;->yellow:I

    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/google/android/material/textview/MaterialTextView;->setTextColor(Landroid/content/res/ColorStateList;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 1325
    :try_start_4
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    invoke-virtual {p3, p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    move-object v0, v2

    goto/16 :goto_2

    :catch_2
    move-exception p0

    move-object v0, v2

    goto/16 :goto_1

    :cond_3
    const/high16 v2, 0x41300000    # 11.0f

    cmpl-float v3, p1, v3

    if-ltz v3, :cond_4

    cmpg-float v3, p1, v2

    if-gtz v3, :cond_4

    .line 1328
    :try_start_5
    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/google/android/material/textview/MaterialTextView;->setText(Ljava/lang/CharSequence;)V

    .line 1329
    sget v0, Lcom/argusoft/sewa/android/app/R$color;->spinnerBorderSelected:I

    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/google/android/material/textview/MaterialTextView;->setTextColor(Landroid/content/res/ColorStateList;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 1331
    :try_start_6
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    invoke-virtual {p3, p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    move-object v0, v1

    goto :goto_2

    :catch_3
    move-exception p0

    move-object v0, v1

    goto :goto_1

    :cond_4
    const/high16 v1, 0x41880000    # 17.0f

    cmpl-float v2, p1, v2

    if-ltz v2, :cond_5

    cmpg-float v2, p1, v1

    if-gtz v2, :cond_5

    .line 1334
    :try_start_7
    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/google/android/material/textview/MaterialTextView;->setText(Ljava/lang/CharSequence;)V

    .line 1335
    sget v1, Lcom/argusoft/sewa/android/app/R$color;->rb_correct_text:I

    invoke-static {p0, v1}, Landroidx/core/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/google/android/material/textview/MaterialTextView;->setTextColor(Landroid/content/res/ColorStateList;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    .line 1337
    :try_start_8
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    invoke-virtual {p3, p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    goto :goto_2

    :catch_4
    move-exception p0

    goto :goto_1

    :cond_5
    cmpl-float p1, p1, v1

    if-ltz p1, :cond_6

    .line 1340
    :try_start_9
    invoke-static {v7}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/google/android/material/textview/MaterialTextView;->setText(Ljava/lang/CharSequence;)V

    .line 1341
    sget p1, Lcom/argusoft/sewa/android/app/R$color;->textColor:I

    invoke-static {p0, p1}, Landroidx/core/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/google/android/material/textview/MaterialTextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 1343
    invoke-virtual {p3, v7}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setMandatorymessage(Ljava/lang/String;)V

    .line 1344
    invoke-virtual {p3, v5}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    :cond_6
    :goto_0
    move-object v0, v6

    goto :goto_2

    :catch_5
    move-exception p0

    move-object v0, v7

    .line 1347
    :goto_1
    invoke-static {v6}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/google/android/material/textview/MaterialTextView;->setText(Ljava/lang/CharSequence;)V

    .line 1348
    invoke-static {p4, v5, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    move-object v7, v0

    :cond_7
    :goto_3
    return-object v7
.end method

.method private static clearExposedVillagesUnderSelectedBlock(Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)V
    .locals 2

    .line 2469
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getDatamap()Ljava/lang/String;

    move-result-object v0

    const-string v1, "exposeBlockVillagesAs"

    invoke-static {v0, v1}, Lcom/argusoft/sewa/android/app/component/MyDynamicComponents;->datamapGetValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2473
    :cond_0
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getLoopCounter()I

    move-result v1

    if-lez v1, :cond_1

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->isIgnoreLoop()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2474
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getLoopCounter()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2476
    :cond_1
    sget-object p0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-interface {p0, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static createErrorTextView(Landroid/content/Context;)Landroid/widget/TextView;
    .locals 3

    .line 2060
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const v1, 0x1060017

    .line 2061
    invoke-static {p0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 p0, 0x41400000    # 12.0f

    .line 2062
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setTextSize(F)V

    const/16 p0, 0x10

    const/4 v1, 0x4

    const/16 v2, 0x8

    .line 2063
    invoke-virtual {v0, p0, v1, p0, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 2064
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    return-object v0
.end method

.method private static varargs createRow(Ljava/lang/String;Landroid/content/Context;[Landroid/view/View;)Landroid/widget/LinearLayout;
    .locals 7

    .line 2069
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 2070
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/high16 v2, 0x40800000    # 4.0f

    .line 2071
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setWeightSum(F)V

    const/16 v2, 0x8

    .line 2072
    invoke-virtual {v0, v1, v2, v1, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 2074
    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 2075
    invoke-static {p0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 p0, 0x10

    .line 2076
    invoke-virtual {v3, v2, v1, p0, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 2078
    new-instance p0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 p1, 0x3f800000    # 1.0f

    const/4 v2, -0x2

    invoke-direct {p0, v1, v2, p1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 2083
    invoke-virtual {v3, p0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2084
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2086
    array-length p0, p2

    const/4 p1, 0x0

    :goto_0
    if-ge p1, p0, :cond_0

    aget-object v3, p2, p1

    .line 2087
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    array-length v5, p2

    int-to-float v5, v5

    const/high16 v6, 0x40400000    # 3.0f

    div-float/2addr v6, v5

    invoke-direct {v4, v1, v2, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    const/4 v5, 0x4

    .line 2092
    invoke-virtual {v4, v5, v1, v5, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 2093
    invoke-virtual {v3, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2094
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private static datamapGetValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 2301
    :cond_0
    const-string v1, "[,;|\\s]+"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    array-length v1, p0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_3

    aget-object v4, p0, v3

    .line 2302
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x3a

    .line 2303
    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-lez v5, :cond_2

    .line 2304
    invoke-virtual {v4, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    add-int/lit8 v5, v5, 0x1

    .line 2305
    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 2306
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move-object v0, p0

    :goto_1
    return-object v0

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method private static datamapHasFlag(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 2283
    :cond_0
    const-string v1, "[,;|\\s]+"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p0, v2

    .line 2284
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method private static exposeVillagesUnderSelectedBlock(Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;)V
    .locals 3

    .line 2449
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getDatamap()Ljava/lang/String;

    move-result-object v0

    const-string v1, "exposeBlockVillagesAs"

    invoke-static {v0, v1}, Lcom/argusoft/sewa/android/app/component/MyDynamicComponents;->datamapGetValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    if-nez p1, :cond_0

    goto :goto_1

    .line 2453
    :cond_0
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getLoopCounter()I

    move-result v1

    if-lez v1, :cond_1

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->isIgnoreLoop()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2454
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getLoopCounter()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2456
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2457
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;->getVillagesUnderSelectedBlock()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/argusoft/sewa/android/app/model/LocationMasterBean;

    .line 2458
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_2

    .line 2459
    const-string v2, ","

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2461
    :cond_2
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/LocationMasterBean;->getActualID()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 2463
    :cond_3
    sget-object p1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    :goto_1
    return-void
.end method

.method public static getAbhaRecordLinkView(Landroid/content/Context;Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)Landroid/view/View;
    .locals 6

    .line 3230
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v2, 0x1

    invoke-static {p0, v1, v2, v0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getLinearLayout(Landroid/content/Context;IILandroid/widget/LinearLayout$LayoutParams;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 3232
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v3, 0x190

    invoke-direct {v1, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0x64

    const/16 v4, 0x14

    const/4 v5, 0x0

    .line 3233
    invoke-virtual {v1, v5, v3, v5, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    const/16 v3, 0x11

    .line 3234
    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 3235
    sget v3, Lcom/argusoft/sewa/android/app/R$drawable;->menu_ncd_reg:I

    invoke-static {p0, v2, v3, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getImageView(Landroid/content/Context;IILandroid/widget/LinearLayout$LayoutParams;)Landroid/widget/ImageView;

    move-result-object v1

    .line 3236
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 3238
    const-string v2, "Tap here to link record with ABHA Id for the beneficiary"

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v2

    const/4 v3, 0x4

    .line 3239
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextAlignment(I)V

    .line 3240
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 3242
    new-instance v2, Lcom/argusoft/sewa/android/app/component/MyDynamicComponents$20;

    invoke-direct {v2, p1}, Lcom/argusoft/sewa/android/app/component/MyDynamicComponents$20;-><init>(Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)V

    check-cast p0, Landroid/app/Activity;

    .line 3292
    invoke-static {p1}, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->getLoopId(Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)I

    move-result p1

    .line 3291
    invoke-virtual {v2, p0, p1}, Lcom/argusoft/sewa/android/app/component/MyDynamicComponents$20;->setActivity(Landroid/app/Activity;I)Landroid/view/View$OnClickListener;

    move-result-object p0

    .line 3242
    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0
.end method

.method public static getAgeBox(Landroid/content/Context;ILcom/argusoft/sewa/android/app/datastructure/QueFormBean;)Landroid/widget/LinearLayout;
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    .line 3344
    invoke-virtual/range {p2 .. p2}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getRelatedpropertyname()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, -0x1

    if-eqz v3, :cond_1

    .line 3345
    invoke-virtual/range {p2 .. p2}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getRelatedpropertyname()Ljava/lang/String;

    move-result-object v3

    .line 3346
    invoke-virtual/range {p2 .. p2}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getLoopCounter()I

    move-result v8

    if-lez v8, :cond_0

    invoke-virtual/range {p2 .. p2}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->isIgnoreLoop()Z

    move-result v8

    if-nez v8, :cond_0

    .line 3347
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getLoopCounter()I

    move-result v3

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3349
    :cond_0
    sget-object v8, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-interface {v8, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 3351
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    .line 3352
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v10, "dd/MM/yyyy"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v11

    invoke-direct {v3, v10, v11}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v10, Ljava/util/Date;

    invoke-direct {v10, v8, v9}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v10}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    .line 3353
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    new-instance v11, Ljava/util/Date;

    invoke-direct {v11}, Ljava/util/Date;-><init>()V

    invoke-virtual {v11}, Ljava/util/Date;->getTime()J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/argusoft/sewa/android/app/util/UtilBean;->calculateAgeYearMonthDayOnGivenDate(Ljava/lang/Long;Ljava/lang/Long;)[I

    move-result-object v10

    .line 3354
    aget v11, v10, v6

    .line 3355
    aget v12, v10, v4

    .line 3356
    aget v10, v10, v5

    .line 3357
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v2, v8}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    goto :goto_0

    .line 3361
    :cond_1
    const-string v3, "Year/month not yet entered"

    const/4 v10, -0x1

    const/4 v11, -0x1

    const/4 v12, -0x1

    :goto_0
    new-instance v8, Lcom/argusoft/sewa/android/app/component/listeners/AgeBoxChangeListener;

    invoke-direct {v8, v0, v2}, Lcom/argusoft/sewa/android/app/component/listeners/AgeBoxChangeListener;-><init>(Landroid/content/Context;Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)V

    .line 3363
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v13, -0x2

    invoke-direct {v9, v7, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-static {v0, v7, v4, v9}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getLinearLayout(Landroid/content/Context;IILandroid/widget/LinearLayout$LayoutParams;)Landroid/widget/LinearLayout;

    move-result-object v9

    if-eq v1, v7, :cond_2

    .line 3365
    invoke-virtual {v9, v1}, Landroid/widget/LinearLayout;->setId(I)V

    .line 3371
    :cond_2
    invoke-virtual/range {p2 .. p2}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getDatamap()Ljava/lang/String;

    move-result-object v1

    const-string v4, "Month"

    const-string v5, "Year"

    const-string v14, "%d"

    if-eqz v1, :cond_9

    invoke-virtual/range {p2 .. p2}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getDatamap()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_9

    .line 3372
    invoke-virtual/range {p2 .. p2}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getDatamap()Ljava/lang/String;

    move-result-object v1

    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 3374
    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getDurationLabel(Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    .line 3375
    const-string v15, "Y"

    invoke-interface {v1, v15}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_4

    .line 3377
    new-instance v15, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v15, v7, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-static {v0, v7, v6, v15}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getLinearLayout(Landroid/content/Context;IILandroid/widget/LinearLayout$LayoutParams;)Landroid/widget/LinearLayout;

    move-result-object v15

    const/4 v2, 0x2

    const/16 v6, 0x272f

    const/4 v13, 0x3

    .line 3378
    invoke-static {v0, v5, v6, v13, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getEditText(Landroid/content/Context;Ljava/lang/String;III)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object v6

    if-eq v11, v7, :cond_3

    .line 3380
    invoke-virtual {v6}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v13

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move-object/from16 v16, v3

    const/4 v7, 0x1

    new-array v3, v7, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v11, v3, v7

    invoke-static {v13, v14, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_3
    move-object/from16 v16, v3

    const/4 v7, 0x0

    .line 3382
    :goto_1
    invoke-virtual {v6}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    invoke-virtual {v2, v8}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 3383
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v3, 0x41100000    # 9.0f

    const/4 v11, -0x2

    invoke-direct {v2, v7, v11, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v15, v6, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3384
    sget v2, Lcom/argusoft/sewa/android/app/R$style;->CustomAnswerView:I

    const/4 v3, -0x1

    invoke-static {v0, v5, v3, v2, v7}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getMaterialTextView(Landroid/content/Context;Ljava/lang/String;IIZ)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v2

    .line 3385
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v6, 0x40000000    # 2.0f

    invoke-direct {v5, v7, v11, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v15, v2, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3386
    invoke-virtual {v9, v15}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_2

    :cond_4
    move-object/from16 v16, v3

    const/4 v3, -0x1

    const/4 v7, 0x0

    const/4 v11, -0x2

    .line 3388
    :goto_2
    const-string v2, "M"

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 3390
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v3, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-static {v0, v3, v7, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getLinearLayout(Landroid/content/Context;IILandroid/widget/LinearLayout$LayoutParams;)Landroid/widget/LinearLayout;

    move-result-object v2

    const/16 v5, 0x2730

    const/4 v6, 0x2

    .line 3391
    invoke-static {v0, v4, v5, v6, v6}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getEditText(Landroid/content/Context;Ljava/lang/String;III)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object v5

    if-eq v12, v3, :cond_5

    .line 3393
    invoke-virtual {v5}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/4 v12, 0x1

    new-array v13, v12, [Ljava/lang/Object;

    aput-object v11, v13, v7

    invoke-static {v6, v14, v13}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 3394
    :cond_5
    invoke-virtual {v5}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    invoke-virtual {v3, v8}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 3395
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v6, 0x41100000    # 9.0f

    const/4 v11, -0x2

    invoke-direct {v3, v7, v11, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v2, v5, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3396
    sget v3, Lcom/argusoft/sewa/android/app/R$style;->CustomAnswerView:I

    const/4 v5, -0x1

    invoke-static {v0, v4, v5, v3, v7}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getMaterialTextView(Landroid/content/Context;Ljava/lang/String;IIZ)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v3

    .line 3397
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v6, 0x40000000    # 2.0f

    invoke-direct {v4, v7, v11, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v2, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3398
    invoke-virtual {v9, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_3

    :cond_6
    const/4 v5, -0x1

    .line 3400
    :goto_3
    const-string v2, "D"

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 3402
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v5, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-static {v0, v5, v7, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getLinearLayout(Landroid/content/Context;IILandroid/widget/LinearLayout$LayoutParams;)Landroid/widget/LinearLayout;

    move-result-object v1

    const/16 v2, 0x2731

    .line 3403
    const-string v3, "Day"

    const/4 v4, 0x2

    invoke-static {v0, v3, v2, v4, v4}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getEditText(Landroid/content/Context;Ljava/lang/String;III)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object v2

    if-eq v10, v5, :cond_7

    .line 3405
    invoke-virtual {v2}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v10, 0x1

    new-array v11, v10, [Ljava/lang/Object;

    aput-object v6, v11, v7

    invoke-static {v5, v14, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 3406
    :cond_7
    invoke-virtual {v2}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    invoke-virtual {v4, v8}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 3407
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v5, 0x41100000    # 9.0f

    const/4 v6, -0x2

    invoke-direct {v4, v7, v6, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3408
    sget v2, Lcom/argusoft/sewa/android/app/R$style;->CustomAnswerView:I

    const/4 v4, -0x1

    invoke-static {v0, v3, v4, v2, v7}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getMaterialTextView(Landroid/content/Context;Ljava/lang/String;IIZ)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v2

    .line 3409
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v4, 0x40000000    # 2.0f

    invoke-direct {v3, v7, v6, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    const/16 v4, -0xa

    const/16 v5, 0xa

    .line 3410
    invoke-virtual {v3, v5, v4, v7, v5}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 3411
    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3412
    invoke-virtual {v9, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_8
    move-object/from16 v3, v16

    const/4 v11, 0x1

    goto/16 :goto_5

    :cond_9
    const/4 v7, 0x0

    .line 3416
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    const/4 v6, -0x1

    invoke-direct {v1, v6, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-static {v0, v6, v7, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getLinearLayout(Landroid/content/Context;IILandroid/widget/LinearLayout$LayoutParams;)Landroid/widget/LinearLayout;

    move-result-object v1

    const/4 v2, 0x3

    const/16 v10, 0x272f

    const/4 v13, 0x2

    .line 3417
    invoke-static {v0, v5, v10, v2, v13}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getEditText(Landroid/content/Context;Ljava/lang/String;III)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object v2

    if-eq v11, v6, :cond_a

    .line 3419
    invoke-virtual {v2}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v10

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/4 v13, 0x1

    new-array v15, v13, [Ljava/lang/Object;

    aput-object v11, v15, v7

    invoke-static {v10, v14, v15}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 3421
    :cond_a
    invoke-virtual {v2}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    invoke-virtual {v6, v8}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 3422
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v10, 0x41100000    # 9.0f

    const/4 v11, -0x2

    invoke-direct {v6, v7, v11, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v2, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3423
    sget v2, Lcom/argusoft/sewa/android/app/R$style;->CustomAnswerView:I

    const/4 v6, -0x1

    invoke-static {v0, v5, v6, v2, v7}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getMaterialTextView(Landroid/content/Context;Ljava/lang/String;IIZ)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v2

    .line 3424
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v10, 0x40000000    # 2.0f

    invoke-direct {v5, v7, v11, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v2, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3425
    invoke-virtual {v9, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 3428
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v6, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-static {v0, v6, v7, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getLinearLayout(Landroid/content/Context;IILandroid/widget/LinearLayout$LayoutParams;)Landroid/widget/LinearLayout;

    move-result-object v1

    const/16 v2, 0x2730

    const/4 v5, 0x2

    .line 3429
    invoke-static {v0, v4, v2, v5, v5}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getEditText(Landroid/content/Context;Ljava/lang/String;III)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object v2

    if-eq v12, v6, :cond_b

    .line 3431
    invoke-virtual {v2}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v11, 0x1

    new-array v12, v11, [Ljava/lang/Object;

    aput-object v10, v12, v7

    invoke-static {v6, v14, v12}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    :cond_b
    const/4 v11, 0x1

    .line 3432
    :goto_4
    invoke-virtual {v2}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    invoke-virtual {v5, v8}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 3433
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v6, 0x41100000    # 9.0f

    const/4 v10, -0x2

    invoke-direct {v5, v7, v10, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v2, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3434
    sget v2, Lcom/argusoft/sewa/android/app/R$style;->CustomAnswerView:I

    const/4 v5, -0x1

    invoke-static {v0, v4, v5, v2, v7}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getMaterialTextView(Landroid/content/Context;Ljava/lang/String;IIZ)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v2

    .line 3435
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v5, 0x40000000    # 2.0f

    invoke-direct {v4, v7, v10, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3436
    invoke-virtual {v9, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 3441
    :goto_5
    invoke-virtual/range {p2 .. p2}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getFormulas()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_d

    invoke-virtual/range {p2 .. p2}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getFormulas()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_d

    .line 3442
    invoke-virtual/range {p2 .. p2}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getFormulas()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/argusoft/sewa/android/app/databean/FormulaTagBean;

    .line 3443
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/FormulaTagBean;->getFormulavalue()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_c

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/FormulaTagBean;->getFormulavalue()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "showdate"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 3444
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/FormulaTagBean;->getFormulavalue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 3445
    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    .line 3447
    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v2, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "showdate-"

    invoke-virtual {v2, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x9

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x1

    goto :goto_6

    .line 3453
    :cond_d
    const-string v1, "Calculated Date"

    const/4 v4, 0x0

    :goto_6
    if-eqz v4, :cond_e

    const/4 v2, 0x0

    .line 3454
    invoke-static {v2, v2, v0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v9, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 3455
    invoke-static {v0, v3}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v0

    const/16 v1, 0x3eb

    .line 3456
    invoke-virtual {v0, v1}, Lcom/google/android/material/textview/MaterialTextView;->setId(I)V

    .line 3457
    invoke-virtual {v8, v0}, Lcom/argusoft/sewa/android/app/component/listeners/AgeBoxChangeListener;->setTextDate(Landroid/widget/TextView;)V

    .line 3458
    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_e
    return-object v9
.end method

.method public static getAudioPlayer(Landroid/content/Context;Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;Ljava/lang/String;I)Landroid/widget/LinearLayout;
    .locals 3

    .line 2624
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    const/4 v2, -0x1

    invoke-direct {v0, v2, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v1, 0x1

    invoke-static {p0, v2, v1, v0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getLinearLayout(Landroid/content/Context;IILandroid/widget/LinearLayout$LayoutParams;)Landroid/widget/LinearLayout;

    move-result-object v0

    if-eq p3, v2, :cond_0

    .line 2628
    invoke-virtual {v0, p3}, Landroid/widget/LinearLayout;->setId(I)V

    .line 2631
    :cond_0
    sget p3, Lcom/argusoft/sewa/android/app/R$drawable;->play_audio:I

    const/4 v2, 0x0

    invoke-static {p0, v1, p3, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getImageView(Landroid/content/Context;IILandroid/widget/LinearLayout$LayoutParams;)Landroid/widget/ImageView;

    move-result-object p3

    .line 2632
    invoke-virtual {v0, p3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2634
    new-instance v1, Lcom/argusoft/sewa/android/app/component/listeners/AudioPlayerListener;

    invoke-direct {v1, p0, p1, p2}, Lcom/argusoft/sewa/android/app/component/listeners/AudioPlayerListener;-><init>(Landroid/content/Context;Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;Ljava/lang/String;)V

    invoke-virtual {p3, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0
.end method

.method public static getAudioPlayerForSimulations(Landroid/content/Context;ILjava/lang/String;)Landroid/widget/LinearLayout;
    .locals 3

    .line 2641
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    const/4 v2, -0x1

    invoke-direct {v0, v2, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v1, 0x1

    invoke-static {p0, v2, v1, v0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getLinearLayout(Landroid/content/Context;IILandroid/widget/LinearLayout$LayoutParams;)Landroid/widget/LinearLayout;

    move-result-object v0

    if-eq p1, v2, :cond_0

    .line 2645
    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setId(I)V

    .line 2648
    :cond_0
    sget p1, Lcom/argusoft/sewa/android/app/R$drawable;->play_audio:I

    const/4 v2, 0x0

    invoke-static {p0, v1, p1, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getImageView(Landroid/content/Context;IILandroid/widget/LinearLayout$LayoutParams;)Landroid/widget/ImageView;

    move-result-object p1

    .line 2649
    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2651
    new-instance v1, Lcom/argusoft/sewa/android/app/component/listeners/SimulationsAudioPlayerListener;

    invoke-direct {v1, p0, p2}, Lcom/argusoft/sewa/android/app/component/listeners/SimulationsAudioPlayerListener;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0
.end method

.method public static getAudioTextBox(Landroid/content/Context;Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;I)Landroid/widget/LinearLayout;
    .locals 7

    .line 2658
    new-instance v0, Lcom/argusoft/sewa/android/app/component/listeners/AudioTextBoxListener;

    invoke-direct {v0, p1}, Lcom/argusoft/sewa/android/app/component/listeners/AudioTextBoxListener;-><init>(Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)V

    .line 2659
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v4, 0x0

    .line 2661
    invoke-static {p0, v2, v4, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getLinearLayout(Landroid/content/Context;IILandroid/widget/LinearLayout$LayoutParams;)Landroid/widget/LinearLayout;

    move-result-object v1

    if-eqz p2, :cond_0

    .line 2663
    invoke-virtual {v1, p2}, Landroid/widget/LinearLayout;->setId(I)V

    .line 2665
    :cond_0
    new-instance p2, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v2, 0x40000000    # 2.0f

    invoke-direct {p2, v3, v3, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 2666
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getLength()I

    move-result v2

    .line 2667
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getQuestion()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x271a

    const/4 v6, 0x1

    invoke-static {p0, v4, v5, v2, v6}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getEditText(Landroid/content/Context;Ljava/lang/String;III)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object v2

    .line 2668
    invoke-virtual {v2, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 2669
    invoke-virtual {v2, p2}, Lcom/google/android/material/textfield/TextInputLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2671
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2673
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getRelatedpropertyname()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_2

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getRelatedpropertyname()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    if-lez p2, :cond_2

    .line 2674
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getRelatedpropertyname()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    .line 2675
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getLoopCounter()I

    move-result v4

    if-lez v4, :cond_1

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->isIgnoreLoop()Z

    move-result v4

    if-nez v4, :cond_1

    .line 2676
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getLoopCounter()I

    move-result p2

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 2678
    :cond_1
    sget-object v4, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-interface {v4, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    if-eqz p2, :cond_2

    .line 2681
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    .line 2682
    invoke-virtual {v2}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 2683
    invoke-virtual {v2}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 2687
    :cond_2
    sget p1, Lcom/argusoft/sewa/android/app/R$drawable;->record_audio:I

    const/4 p2, 0x0

    const/16 v2, 0x16

    invoke-static {p0, v2, p1, p2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getImageView(Landroid/content/Context;IILandroid/widget/LinearLayout$LayoutParams;)Landroid/widget/ImageView;

    move-result-object p0

    .line 2688
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2689
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    const p2, 0x3dcccccd    # 0.1f

    invoke-direct {p1, v3, v3, p2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 2690
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2691
    invoke-virtual {v1, p0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-object v1
.end method

.method public static getAutoCompleteTextView(Landroid/content/Context;Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;I)Landroid/widget/AutoCompleteTextView;
    .locals 9

    .line 2735
    new-instance v0, Landroid/widget/AutoCompleteTextView;

    invoke-direct {v0, p0}, Landroid/widget/AutoCompleteTextView;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 2736
    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setThreshold(I)V

    const/4 v2, 0x1

    .line 2737
    invoke-virtual {v0, v2}, Landroid/widget/AutoCompleteTextView;->setSingleLine(Z)V

    const/4 v3, 0x6

    .line 2738
    invoke-virtual {v0, v3}, Landroid/widget/AutoCompleteTextView;->setImeOptions(I)V

    .line 2742
    invoke-static {p1, v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getOptionsOrDataMap(Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;Z)Ljava/util/List;

    move-result-object v3

    .line 2745
    invoke-static {v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getListOfOptions(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    .line 2747
    new-instance v5, Landroid/widget/ArrayAdapter;

    const v6, 0x109000a

    invoke-direct {v5, p0, v6, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 2752
    invoke-virtual {v0, v5}, Landroid/widget/AutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 2753
    sget p0, Lcom/argusoft/sewa/android/app/R$layout;->spinner_item_dropdown:I

    invoke-virtual {v5, p0}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 2756
    new-instance p0, Lcom/argusoft/sewa/android/app/component/MyDynamicComponents$$ExternalSyntheticLambda1;

    invoke-direct {p0, v0}, Lcom/argusoft/sewa/android/app/component/MyDynamicComponents$$ExternalSyntheticLambda1;-><init>(Landroid/widget/AutoCompleteTextView;)V

    invoke-virtual {v0, p0}, Landroid/widget/AutoCompleteTextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 2763
    new-instance p0, Lcom/argusoft/sewa/android/app/component/MyDynamicComponents$$ExternalSyntheticLambda2;

    invoke-direct {p0, v0}, Lcom/argusoft/sewa/android/app/component/MyDynamicComponents$$ExternalSyntheticLambda2;-><init>(Landroid/widget/AutoCompleteTextView;)V

    invoke-virtual {v0, p0}, Landroid/widget/AutoCompleteTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2769
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getRelatedpropertyname()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 2770
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getRelatedpropertyname()Ljava/lang/String;

    move-result-object p0

    const-string v5, "null"

    invoke-virtual {p0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    .line 2771
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getRelatedpropertyname()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 2774
    :goto_0
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getFormulas()Ljava/util/List;

    move-result-object v5

    const/4 v6, -0x1

    if-eqz v5, :cond_4

    .line 2775
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_4

    .line 2777
    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/argusoft/sewa/android/app/databean/FormulaTagBean;

    invoke-virtual {v5}, Lcom/argusoft/sewa/android/app/databean/FormulaTagBean;->getFormulavalue()Ljava/lang/String;

    move-result-object v5

    .line 2778
    const-string v7, "-"

    .line 2779
    invoke-static {v5, v7}, Lcom/argusoft/sewa/android/app/util/UtilBean;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 2781
    invoke-static {v5}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    const-string v8, "setdefaultproperty"

    .line 2782
    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_4

    if-nez p0, :cond_1

    .line 2785
    aget-object p0, v5, v2

    .line 2788
    :cond_1
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getLoopCounter()I

    move-result v2

    if-lez v2, :cond_2

    .line 2789
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->isIgnoreLoop()Z

    move-result v2

    if-nez v2, :cond_2

    .line 2790
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getLoopCounter()I

    move-result p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 2793
    :cond_2
    sget-object v2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    .line 2795
    invoke-interface {v2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_4

    const/4 v2, 0x0

    .line 2798
    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_4

    .line 2800
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/argusoft/sewa/android/app/databean/OptionDataBean;

    invoke-virtual {v5}, Lcom/argusoft/sewa/android/app/databean/OptionDataBean;->getKey()Ljava/lang/String;

    move-result-object v5

    .line 2799
    invoke-virtual {p0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_2

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    const/4 v2, -0x1

    :goto_2
    if-eq v2, v6, :cond_5

    .line 2810
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/CharSequence;

    invoke-virtual {v0, p0, v1}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;Z)V

    .line 2814
    :cond_5
    new-instance p0, Lcom/argusoft/sewa/android/app/component/MyDynamicComponents$$ExternalSyntheticLambda3;

    invoke-direct {p0, v3, p1}, Lcom/argusoft/sewa/android/app/component/MyDynamicComponents$$ExternalSyntheticLambda3;-><init>(Ljava/util/List;Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)V

    invoke-virtual {v0, p0}, Landroid/widget/AutoCompleteTextView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 2831
    new-instance p0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 p1, -0x2

    invoke-direct {p0, v6, p1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 p1, -0x14

    const/16 v2, 0x32

    .line 2836
    invoke-virtual {p0, v1, p1, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 2837
    invoke-virtual {v0, p0}, Landroid/widget/AutoCompleteTextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 p0, 0x14

    .line 2839
    invoke-virtual {v0, p0, p0, p0, p0}, Landroid/widget/AutoCompleteTextView;->setPadding(IIII)V

    if-eq p2, v6, :cond_6

    .line 2842
    invoke-virtual {v0, p2}, Landroid/widget/AutoCompleteTextView;->setId(I)V

    :cond_6
    return-object v0
.end method

.method public static getBMIComponent(Landroid/content/Context;Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)Landroid/widget/LinearLayout;
    .locals 14

    .line 928
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0x2710

    const/4 v3, 0x1

    .line 929
    invoke-static {p0, v2, v3, v0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getLinearLayout(Landroid/content/Context;IILandroid/widget/LinearLayout$LayoutParams;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 935
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getFormulas()Ljava/util/List;

    move-result-object v2

    const/4 v4, 0x2

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v7, 0x0

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getFormulas()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 936
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getFormulas()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v8, v7

    move-object v9, v8

    move-object v10, v9

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/argusoft/sewa/android/app/databean/FormulaTagBean;

    .line 937
    invoke-virtual {v11}, Lcom/argusoft/sewa/android/app/databean/FormulaTagBean;->getFormulavalue()Ljava/lang/String;

    move-result-object v12

    const-string v13, "-"

    invoke-virtual {v12, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 939
    invoke-virtual {v11}, Lcom/argusoft/sewa/android/app/databean/FormulaTagBean;->getFormulavalue()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 940
    aget-object v12, v11, v6

    const-string v13, "setbmiheightweight"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_0

    array-length v12, v11

    if-ne v12, v5, :cond_0

    .line 941
    sget-object v8, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    aget-object v9, v11, v3

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 942
    sget-object v9, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    aget-object v11, v11, v4

    invoke-interface {v9, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    if-eqz v8, :cond_0

    if-eqz v9, :cond_0

    .line 944
    const-string v10, "."

    invoke-virtual {v8, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 945
    const-string v10, "\\."

    invoke-virtual {v8, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    aget-object v8, v8, v6

    .line 947
    :cond_1
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v9}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v11

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/argusoft/sewa/android/app/util/UtilBean;->calculateBmi(Ljava/lang/Integer;Ljava/lang/Float;)Ljava/lang/String;

    move-result-object v10

    .line 948
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "/"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p1, v11}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_2
    move-object v8, v7

    move-object v9, v8

    move-object v10, v9

    .line 955
    :cond_3
    const-string v2, "Height (in cms)"

    invoke-static {v7, v7, p0, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v2

    .line 956
    const-string v3, "Height"

    const/16 v11, 0x2711

    invoke-static {p0, v3, v11, v5, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getEditText(Landroid/content/Context;Ljava/lang/String;III)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object v3

    const/16 v5, -0x14

    const/16 v11, 0x32

    .line 957
    invoke-virtual {v3, v6, v5, v6, v11}, Lcom/google/android/material/textfield/TextInputLayout;->setPadding(IIII)V

    .line 958
    invoke-virtual {v3}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v12

    if-eqz v12, :cond_4

    .line 959
    invoke-virtual {v3}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v12

    invoke-virtual {v12, v4}, Landroid/widget/EditText;->setInputType(I)V

    if-eqz v8, :cond_4

    .line 961
    invoke-virtual {v3}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 965
    :cond_4
    const-string v4, "Weight (in kgs)"

    invoke-static {v7, v7, p0, v4}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v4

    const/16 v8, 0x2712

    const/4 v12, 0x6

    .line 966
    const-string v13, "Weight"

    invoke-static {p0, v13, v8, v12, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getEditText(Landroid/content/Context;Ljava/lang/String;III)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object v1

    .line 967
    invoke-virtual {v1, v6, v5, v6, v11}, Lcom/google/android/material/textfield/TextInputLayout;->setPadding(IIII)V

    .line 968
    invoke-virtual {v1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v5

    if-eqz v5, :cond_5

    .line 969
    invoke-virtual {v1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v5

    const/16 v8, 0x2002

    invoke-virtual {v5, v8}, Landroid/widget/EditText;->setInputType(I)V

    if-eqz v9, :cond_5

    .line 971
    invoke-virtual {v1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 975
    :cond_5
    const-string v5, "BMI"

    invoke-static {v7, v7, p0, v5}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v5

    .line 976
    const-string v7, "Not available"

    invoke-static {p0, v7}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object p0

    .line 977
    invoke-virtual {p0, v6, v6, v6, v11}, Lcom/google/android/material/textview/MaterialTextView;->setPadding(IIII)V

    if-eqz v10, :cond_6

    .line 979
    invoke-virtual {p0, v10}, Lcom/google/android/material/textview/MaterialTextView;->setText(Ljava/lang/CharSequence;)V

    .line 981
    :cond_6
    invoke-virtual {v3}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v6

    new-instance v7, Lcom/argusoft/sewa/android/app/component/MyDynamicComponents$7;

    invoke-direct {v7, v1, p0, p1}, Lcom/argusoft/sewa/android/app/component/MyDynamicComponents$7;-><init>(Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/textview/MaterialTextView;Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)V

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 998
    invoke-virtual {v1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v6

    if-eqz v6, :cond_7

    .line 999
    invoke-virtual {v1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v6

    new-instance v7, Lcom/argusoft/sewa/android/app/component/MyDynamicComponents$8;

    invoke-direct {v7, v3, p0, p1}, Lcom/argusoft/sewa/android/app/component/MyDynamicComponents$8;-><init>(Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/textview/MaterialTextView;Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)V

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1017
    :cond_7
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1018
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1019
    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1020
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1021
    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1022
    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-object v0
.end method

.method public static getBMIComponentAdolescent(Landroid/content/Context;Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)Landroid/widget/LinearLayout;
    .locals 12

    .line 1074
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0x2710

    const/4 v3, 0x1

    .line 1075
    invoke-static {p0, v2, v3, v0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getLinearLayout(Landroid/content/Context;IILandroid/widget/LinearLayout$LayoutParams;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 1081
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getFormulas()Ljava/util/List;

    move-result-object v2

    const/4 v4, 0x2

    const/4 v5, 0x3

    const/4 v6, 0x0

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getFormulas()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1082
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getFormulas()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/argusoft/sewa/android/app/databean/FormulaTagBean;

    .line 1083
    invoke-virtual {v7}, Lcom/argusoft/sewa/android/app/databean/FormulaTagBean;->getFormulavalue()Ljava/lang/String;

    move-result-object v8

    const-string v9, "-"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1085
    invoke-virtual {v7}, Lcom/argusoft/sewa/android/app/databean/FormulaTagBean;->getFormulavalue()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 1086
    aget-object v8, v7, v6

    const-string v9, "setbmiheightweight"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    array-length v8, v7

    if-ne v8, v5, :cond_0

    .line 1087
    sget-object v8, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    aget-object v9, v7, v3

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 1088
    sget-object v9, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    aget-object v7, v7, v4

    invoke-interface {v9, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    if-eqz v8, :cond_0

    if-eqz v7, :cond_0

    .line 1090
    const-string v9, "."

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 1091
    const-string v9, "\\."

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    aget-object v8, v8, v6

    .line 1093
    :cond_1
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v10

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/argusoft/sewa/android/app/util/UtilBean;->calculateBmi(Ljava/lang/Integer;Ljava/lang/Float;)Ljava/lang/String;

    move-result-object v9

    .line 1094
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "/"

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 1101
    :cond_2
    const-string v2, "Height (in cms)"

    const/4 v3, 0x0

    invoke-static {v3, v3, p0, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v2

    .line 1102
    const-string v7, "Height"

    const/16 v8, 0x2711

    invoke-static {p0, v7, v8, v5, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getEditText(Landroid/content/Context;Ljava/lang/String;III)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object v5

    .line 1103
    invoke-virtual {v5}, Lcom/google/android/material/textfield/TextInputLayout;->requestFocus()Z

    const/16 v7, -0x14

    const/16 v8, 0x32

    .line 1104
    invoke-virtual {v5, v6, v7, v6, v8}, Lcom/google/android/material/textfield/TextInputLayout;->setPadding(IIII)V

    .line 1105
    invoke-virtual {v5}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v9

    if-eqz v9, :cond_3

    .line 1106
    invoke-virtual {v5}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v9

    invoke-virtual {v9, v4}, Landroid/widget/EditText;->setInputType(I)V

    .line 1112
    :cond_3
    const-string v4, "Weight (in kgs)"

    invoke-static {v3, v3, p0, v4}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v4

    const/16 v9, 0x2712

    const/4 v10, 0x4

    .line 1113
    const-string v11, "Weight"

    invoke-static {p0, v11, v9, v10, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getEditText(Landroid/content/Context;Ljava/lang/String;III)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object v1

    .line 1114
    invoke-virtual {v1, v6, v7, v6, v8}, Lcom/google/android/material/textfield/TextInputLayout;->setPadding(IIII)V

    .line 1115
    invoke-virtual {v1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v7

    if-eqz v7, :cond_4

    .line 1116
    invoke-virtual {v1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v7

    const/16 v9, 0x2002

    invoke-virtual {v7, v9}, Landroid/widget/EditText;->setInputType(I)V

    .line 1122
    :cond_4
    const-string v7, "BMI"

    invoke-static {v3, v3, p0, v7}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v3

    .line 1123
    const-string v7, "Not available"

    invoke-static {p0, v7}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object p0

    .line 1124
    invoke-virtual {p0, v6, v6, v6, v8}, Lcom/google/android/material/textview/MaterialTextView;->setPadding(IIII)V

    .line 1128
    invoke-virtual {v5}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v6

    new-instance v7, Lcom/argusoft/sewa/android/app/component/MyDynamicComponents$9;

    invoke-direct {v7, v1, p0, p1}, Lcom/argusoft/sewa/android/app/component/MyDynamicComponents$9;-><init>(Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/textview/MaterialTextView;Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)V

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1145
    invoke-virtual {v1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v6

    if-eqz v6, :cond_5

    .line 1146
    invoke-virtual {v1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v6

    new-instance v7, Lcom/argusoft/sewa/android/app/component/MyDynamicComponents$10;

    invoke-direct {v7, v5, p0, p1}, Lcom/argusoft/sewa/android/app/component/MyDynamicComponents$10;-><init>(Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/textview/MaterialTextView;Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)V

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1164
    :cond_5
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1165
    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1166
    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1167
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1168
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1169
    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-object v0
.end method

.method public static getBloodPressureBox(Landroid/content/Context;Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;I)Landroid/widget/LinearLayout;
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p2

    .line 2136
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v5, 0x1

    invoke-static {v0, v3, v5, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getLinearLayout(Landroid/content/Context;IILandroid/widget/LinearLayout$LayoutParams;)Landroid/widget/LinearLayout;

    move-result-object v2

    if-eq v1, v3, :cond_0

    .line 2139
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setId(I)V

    .line 2141
    :cond_0
    new-instance v1, Lcom/argusoft/sewa/android/app/component/listeners/BloodPresserChangedListener;

    move-object/from16 v6, p1

    invoke-direct {v1, v0, v6}, Lcom/argusoft/sewa/android/app/component/listeners/BloodPresserChangedListener;-><init>(Landroid/content/Context;Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)V

    .line 2142
    invoke-virtual/range {p1 .. p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getDatamap()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_1

    .line 2144
    const-string v6, "Not available"

    :cond_1
    const/16 v7, 0x2725

    const/4 v8, 0x0

    .line 2146
    invoke-static {v0, v6, v7, v8}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getCheckBox(Landroid/content/Context;Ljava/lang/String;IZ)Lcom/google/android/material/checkbox/MaterialCheckBox;

    move-result-object v6

    .line 2147
    invoke-virtual {v6, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 2149
    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2151
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v7, 0x2726

    invoke-static {v0, v7, v5, v6}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getLinearLayout(Landroid/content/Context;IILandroid/widget/LinearLayout$LayoutParams;)Landroid/widget/LinearLayout;

    move-result-object v5

    .line 2153
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-static {v0, v3, v8, v6}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getLinearLayout(Landroid/content/Context;IILandroid/widget/LinearLayout$LayoutParams;)Landroid/widget/LinearLayout;

    move-result-object v6

    .line 2156
    const-string v7, "Systolic BP"

    invoke-static {v7}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x2727

    const/4 v11, 0x3

    const/4 v12, 0x2

    .line 2155
    invoke-static {v0, v9, v10, v11, v12}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getEditText(Landroid/content/Context;Ljava/lang/String;III)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object v9

    .line 2159
    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v13, 0x41100000    # 9.0f

    invoke-direct {v10, v4, v4, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v9, v10}, Lcom/google/android/material/textfield/TextInputLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2160
    invoke-virtual {v9}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v10

    if-eqz v10, :cond_2

    .line 2161
    invoke-virtual {v9}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v10

    invoke-virtual {v10, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    :cond_2
    const/16 v10, -0x14

    const/16 v14, 0x32

    .line 2163
    invoke-virtual {v9, v8, v10, v8, v14}, Lcom/google/android/material/textfield/TextInputLayout;->setPadding(IIII)V

    .line 2164
    invoke-virtual {v6, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2166
    sget v9, Lcom/argusoft/sewa/android/app/R$style;->CustomAnswerView:I

    const-string v15, "mmHg"

    invoke-static {v0, v15, v3, v9, v8}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getMaterialTextView(Landroid/content/Context;Ljava/lang/String;IIZ)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v9

    const/high16 v10, 0x3f800000    # 1.0f

    if-eqz v9, :cond_3

    .line 2168
    new-instance v14, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v14, v4, v4, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v9, v14}, Lcom/google/android/material/textview/MaterialTextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2169
    invoke-virtual {v6, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2172
    :cond_3
    sget v9, Lcom/argusoft/sewa/android/app/R$style;->CustomAnswerView:I

    invoke-static {v0, v7, v3, v9, v8}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getMaterialTextView(Landroid/content/Context;Ljava/lang/String;IIZ)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2173
    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2175
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-static {v0, v3, v8, v6}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getLinearLayout(Landroid/content/Context;IILandroid/widget/LinearLayout$LayoutParams;)Landroid/widget/LinearLayout;

    move-result-object v6

    .line 2178
    const-string v7, "Diastolic BP"

    invoke-static {v7}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const/16 v14, 0x2728

    .line 2177
    invoke-static {v0, v9, v14, v11, v12}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getEditText(Landroid/content/Context;Ljava/lang/String;III)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object v9

    .line 2181
    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v11, v4, v4, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v9, v11}, Lcom/google/android/material/textfield/TextInputLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v11, 0x32

    const/16 v12, -0x14

    .line 2182
    invoke-virtual {v9, v8, v12, v8, v11}, Lcom/google/android/material/textfield/TextInputLayout;->setPadding(IIII)V

    .line 2183
    invoke-virtual {v9}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v11

    if-eqz v11, :cond_4

    .line 2184
    invoke-virtual {v9}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v11

    invoke-virtual {v11, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 2187
    :cond_4
    invoke-virtual {v6, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2189
    sget v1, Lcom/argusoft/sewa/android/app/R$style;->CustomAnswerView:I

    invoke-static {v0, v15, v3, v1, v8}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getMaterialTextView(Landroid/content/Context;Ljava/lang/String;IIZ)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 2191
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v9, v4, v4, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v9}, Lcom/google/android/material/textview/MaterialTextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2193
    invoke-virtual {v6, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2195
    :cond_5
    sget v1, Lcom/argusoft/sewa/android/app/R$style;->CustomAnswerView:I

    invoke-static {v0, v7, v3, v1, v8}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getMaterialTextView(Landroid/content/Context;Ljava/lang/String;IIZ)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2196
    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2198
    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-object v2
.end method

.method public static getBreastScreeningComponent(Landroid/content/Context;Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)Landroid/widget/LinearLayout;
    .locals 7

    .line 898
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 899
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0x2711

    const/4 v3, 0x1

    .line 900
    invoke-static {p0, v2, v3, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getLinearLayout(Landroid/content/Context;IILandroid/widget/LinearLayout$LayoutParams;)Landroid/widget/LinearLayout;

    move-result-object v1

    const/16 v2, 0x11

    .line 901
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 902
    const-string v2, "layout_inflater"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 903
    sget v4, Lcom/argusoft/sewa/android/app/R$layout;->breast_exam_layout:I

    invoke-virtual {v2, v4, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 905
    new-instance v4, Lcom/argusoft/sewa/android/app/component/MyDynamicComponents$6;

    invoke-direct {v4, v0, p1}, Lcom/argusoft/sewa/android/app/component/MyDynamicComponents$6;-><init>(Ljava/util/Set;Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)V

    :goto_0
    const/16 p1, 0xf

    if-ge v3, p1, :cond_0

    .line 920
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v5, "breast_chkBox"

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v5, "id"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v0, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    .line 921
    invoke-virtual {p1, v4}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public static getCheckBoxInGroup(Landroid/content/Context;Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;ILandroid/widget/CompoundButton$OnCheckedChangeListener;)Landroid/widget/LinearLayout;
    .locals 10

    .line 468
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    const/4 v2, -0x1

    invoke-direct {v0, v2, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v1, 0x1

    invoke-static {p0, v2, v1, v0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getLinearLayout(Landroid/content/Context;IILandroid/widget/LinearLayout$LayoutParams;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/4 v3, 0x0

    if-eqz p1, :cond_1

    .line 474
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getRelatedpropertyname()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getRelatedpropertyname()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1

    .line 475
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getRelatedpropertyname()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 476
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getLoopCounter()I

    move-result v5

    if-lez v5, :cond_0

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->isIgnoreLoop()Z

    move-result v5

    if-nez v5, :cond_0

    .line 477
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getLoopCounter()I

    move-result v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 479
    :cond_0
    sget-object v5, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-eqz v4, :cond_2

    .line 481
    const-string v3, ","

    invoke-static {v4, v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getListFromStringBySeparator(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    goto :goto_0

    :cond_1
    move-object v4, v3

    :cond_2
    :goto_0
    const/4 v5, 0x0

    .line 485
    invoke-static {p1, v5}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getOptionsOrDataMap(Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;Z)Ljava/util/List;

    move-result-object v6

    .line 487
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v7

    const-string v8, "No options available"

    if-nez v7, :cond_5

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/argusoft/sewa/android/app/databean/OptionDataBean;

    invoke-virtual {v7}, Lcom/argusoft/sewa/android/app/databean/OptionDataBean;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 489
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    const/4 v7, 0x0

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/argusoft/sewa/android/app/databean/OptionDataBean;

    if-eqz v3, :cond_3

    .line 491
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_3

    invoke-virtual {v8}, Lcom/argusoft/sewa/android/app/databean/OptionDataBean;->getKey()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v3, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 492
    invoke-virtual {v8}, Lcom/argusoft/sewa/android/app/databean/OptionDataBean;->getValue()Ljava/lang/String;

    move-result-object v8

    add-int/lit8 v9, v7, 0x1

    invoke-static {p0, v8, v7, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getCheckBox(Landroid/content/Context;Ljava/lang/String;IZ)Lcom/google/android/material/checkbox/MaterialCheckBox;

    move-result-object v7

    goto :goto_2

    .line 494
    :cond_3
    invoke-virtual {v8}, Lcom/argusoft/sewa/android/app/databean/OptionDataBean;->getValue()Ljava/lang/String;

    move-result-object v8

    add-int/lit8 v9, v7, 0x1

    invoke-static {p0, v8, v7, v5}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getCheckBox(Landroid/content/Context;Ljava/lang/String;IZ)Lcom/google/android/material/checkbox/MaterialCheckBox;

    move-result-object v7

    .line 496
    :goto_2
    sget v8, Lcom/argusoft/sewa/android/app/R$color;->checkbox_selector:I

    invoke-static {p0, v8}, Landroidx/core/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/CheckBox;->setTextColor(Landroid/content/res/ColorStateList;)V

    const/16 v8, 0x14

    .line 497
    invoke-virtual {v7, v5, v8, v5, v8}, Landroid/widget/CheckBox;->setPadding(IIII)V

    .line 498
    invoke-virtual {v7, p3}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 499
    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 500
    invoke-static {p0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getSeparator(Landroid/content/Context;)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move v7, v9

    goto :goto_1

    :cond_4
    if-eqz p1, :cond_7

    .line 503
    invoke-virtual {p1, v4}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    goto :goto_4

    :cond_5
    if-eqz v3, :cond_6

    .line 506
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_6

    .line 508
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x0

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    add-int/lit8 v4, v1, 0x1

    .line 509
    invoke-static {p0, v3, v1, v5}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getCheckBox(Landroid/content/Context;Ljava/lang/String;IZ)Lcom/google/android/material/checkbox/MaterialCheckBox;

    move-result-object v1

    .line 510
    invoke-virtual {v1, p3}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 511
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move v1, v4

    goto :goto_3

    .line 514
    :cond_6
    invoke-static {p0, v8}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_7
    :goto_4
    if-eq p2, v2, :cond_8

    .line 518
    invoke-virtual {v0, p2}, Landroid/widget/LinearLayout;->setId(I)V

    :cond_8
    return-object v0
.end method

.method public static getCheckBoxWithTextBox(Landroid/content/Context;Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)Landroid/view/View;
    .locals 10

    .line 408
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v3, 0x1

    invoke-static {p0, v1, v3, v0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getLinearLayout(Landroid/content/Context;IILandroid/widget/LinearLayout$LayoutParams;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 410
    new-instance v4, Lcom/argusoft/sewa/android/app/component/listeners/CheckBoxWithTextBoxListener;

    invoke-direct {v4, p1}, Lcom/argusoft/sewa/android/app/component/listeners/CheckBoxWithTextBoxListener;-><init>(Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)V

    .line 412
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getDatamap()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_0

    .line 414
    const-string v5, "Not available"

    :cond_0
    const/16 v6, 0x271b

    const/4 v7, 0x0

    .line 416
    invoke-static {p0, v5, v6, v7}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getCheckBox(Landroid/content/Context;Ljava/lang/String;IZ)Lcom/google/android/material/checkbox/MaterialCheckBox;

    move-result-object v5

    .line 417
    invoke-virtual {v5, v4}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 418
    sget v6, Lcom/argusoft/sewa/android/app/R$color;->checkbox_selector:I

    invoke-static {p0, v6}, Landroidx/core/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/CheckBox;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 419
    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 421
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0x271c

    invoke-static {p0, v2, v3, v6}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getLinearLayout(Landroid/content/Context;IILandroid/widget/LinearLayout$LayoutParams;)Landroid/widget/LinearLayout;

    move-result-object v2

    .line 425
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getValidations()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 426
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_3

    .line 427
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/argusoft/sewa/android/app/databean/ValidationTagBean;

    .line 428
    invoke-virtual {v6}, Lcom/argusoft/sewa/android/app/databean/ValidationTagBean;->getMethod()Ljava/lang/String;

    move-result-object v8

    const-string v9, "Numeric"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 429
    invoke-virtual {v6}, Lcom/argusoft/sewa/android/app/databean/ValidationTagBean;->getMethod()Ljava/lang/String;

    move-result-object v8

    const-string v9, "GreaterThen0"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 430
    invoke-virtual {v6}, Lcom/argusoft/sewa/android/app/databean/ValidationTagBean;->getMethod()Ljava/lang/String;

    move-result-object v6

    const-string v8, "onlyNumbers"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    :cond_2
    const/4 v3, 0x2

    goto :goto_0

    :cond_3
    const/4 v3, -0x1

    .line 437
    :goto_0
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getQuestion()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getLength()I

    move-result v8

    invoke-static {p0, v6, v1, v8, v3}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getEditText(Landroid/content/Context;Ljava/lang/String;III)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object p0

    .line 438
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 439
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 442
    :cond_4
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getRelatedpropertyname()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getRelatedpropertyname()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_6

    .line 443
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getRelatedpropertyname()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 444
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getLoopCounter()I

    move-result v3

    if-lez v3, :cond_5

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->isIgnoreLoop()Z

    move-result v3

    if-nez v3, :cond_5

    .line 445
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getLoopCounter()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 447
    :cond_5
    sget-object v3, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_6

    .line 449
    invoke-virtual {p1, v1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    .line 450
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 454
    :cond_6
    sget-object v1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->formType:Ljava/lang/String;

    if-eqz v1, :cond_7

    sget-object v1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->formType:Ljava/lang/String;

    const-string v3, "FHS"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v3, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->isAadharNumberScanned:Ljava/lang/Boolean;

    .line 455
    invoke-virtual {v1, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getId()I

    move-result p1

    const/16 v1, 0xe

    if-ne p1, v1, :cond_7

    .line 457
    invoke-virtual {v5, v7}, Landroid/widget/CheckBox;->setClickable(Z)V

    .line 458
    invoke-virtual {p0, v7}, Lcom/google/android/material/textfield/TextInputLayout;->setClickable(Z)V

    .line 459
    invoke-virtual {p0, v7}, Lcom/google/android/material/textfield/TextInputLayout;->setFocusable(Z)V

    .line 461
    :cond_7
    invoke-virtual {v2, p0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 462
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-object v0
.end method

.method public static getCheckBoxWithTextBoxAadhaar(Landroid/content/Context;Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)Landroid/view/View;
    .locals 11

    .line 3465
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v3, 0x1

    invoke-static {p0, v1, v3, v0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getLinearLayout(Landroid/content/Context;IILandroid/widget/LinearLayout$LayoutParams;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 3466
    new-instance v4, Lcom/argusoft/sewa/android/app/component/listeners/CheckBoxWithTextBoxAadhaarListener;

    invoke-direct {v4, p1}, Lcom/argusoft/sewa/android/app/component/listeners/CheckBoxWithTextBoxAadhaarListener;-><init>(Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)V

    .line 3468
    const-string v5, "I accept the Terms & Conditions provided below"

    const/16 v6, 0x271b

    const/4 v7, 0x0

    invoke-static {p0, v5, v6, v7}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getCheckBox(Landroid/content/Context;Ljava/lang/String;IZ)Lcom/google/android/material/checkbox/MaterialCheckBox;

    move-result-object v5

    .line 3469
    invoke-virtual {v5, v4}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 3470
    sget v6, Lcom/argusoft/sewa/android/app/R$color;->checkbox_selector:I

    invoke-static {p0, v6}, Landroidx/core/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/CheckBox;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 3471
    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 3472
    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 3475
    new-instance v6, Landroid/text/SpannableString;

    const-string v8, "Terms & Conditions"

    invoke-direct {v6, v8}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 3477
    new-instance v8, Lcom/argusoft/sewa/android/app/component/MyDynamicComponents$22;

    invoke-direct {v8, p0}, Lcom/argusoft/sewa/android/app/component/MyDynamicComponents$22;-><init>(Landroid/content/Context;)V

    const/16 v9, 0x12

    const/16 v10, 0x21

    .line 3540
    invoke-virtual {v6, v8, v7, v9, v10}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 3541
    new-instance v8, Landroid/text/style/UnderlineSpan;

    invoke-direct {v8}, Landroid/text/style/UnderlineSpan;-><init>()V

    invoke-virtual {v6, v8, v7, v9, v10}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 3543
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3544
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 3545
    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setHighlightColor(I)V

    const/16 v6, 0xa

    .line 3546
    invoke-virtual {v5, v7, v6, v7, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 3547
    sget v6, Lcom/argusoft/sewa/android/app/R$color;->colorPrimary:I

    invoke-static {p0, v6}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 3548
    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setClickable(Z)V

    .line 3549
    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 3551
    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 3552
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0x271c

    invoke-static {p0, v2, v3, v5}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getLinearLayout(Landroid/content/Context;IILandroid/widget/LinearLayout$LayoutParams;)Landroid/widget/LinearLayout;

    move-result-object v2

    .line 3554
    const-string v3, "Please enter aadhaar number"

    invoke-static {v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v6, v6, p0, v5}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v5

    .line 3555
    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 3557
    invoke-static {v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getLength()I

    move-result v5

    const/4 v7, 0x2

    invoke-static {p0, v3, v1, v5, v7}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getEditText(Landroid/content/Context;Ljava/lang/String;III)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object v3

    .line 3558
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 3562
    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/component/listeners/CheckBoxWithTextBoxAadhaarListener;->isOnlyAadhaar()Z

    move-result v5

    if-nez v5, :cond_0

    .line 3563
    const-string v5, "Name as per aadhaar"

    invoke-static {v5}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v6, p0, v7}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v7

    .line 3564
    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 3566
    invoke-static {v5}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/16 v7, 0x32

    const/16 v8, 0x60

    invoke-static {p0, v5, v1, v7, v8}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getEditText(Landroid/content/Context;Ljava/lang/String;III)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object v1

    .line 3567
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 3569
    const-string v5, "DOB as per aadhaar"

    invoke-static {v5}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v6, p0, v5}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v5

    .line 3570
    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 3572
    invoke-static {p1, p0}, Lcom/argusoft/sewa/android/app/component/MyDynamicComponents;->getCustomDatePicker(Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v6

    .line 3573
    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object p0, v6

    move-object v6, v1

    goto :goto_0

    :cond_0
    move-object p0, v6

    .line 3576
    :goto_0
    invoke-virtual {v4, v3, v6, p0, v2}, Lcom/argusoft/sewa/android/app/component/listeners/CheckBoxWithTextBoxAadhaarListener;->setInputs(Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/textfield/TextInputLayout;Landroid/view/View;Landroid/widget/LinearLayout;)V

    const/16 p0, 0x8

    .line 3577
    invoke-virtual {v2, p0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3578
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-object v0
.end method

.method public static getCustomDatePicker(Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;Landroid/content/Context;)Landroid/widget/LinearLayout;
    .locals 9

    const/4 v0, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 586
    invoke-static {p1, v0, v1, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getLinearLayout(Landroid/content/Context;IILandroid/widget/LinearLayout$LayoutParams;)Landroid/widget/LinearLayout;

    move-result-object v3

    .line 588
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getRelatedpropertyname()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 589
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getRelatedpropertyname()Ljava/lang/String;

    move-result-object v4

    .line 590
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getLoopCounter()I

    move-result v5

    if-lez v5, :cond_0

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->isIgnoreLoop()Z

    move-result v5

    if-nez v5, :cond_0

    .line 591
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getLoopCounter()I

    move-result v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 593
    :cond_0
    sget-object v5, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 595
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 596
    new-instance v6, Ljava/text/SimpleDateFormat;

    const-string v7, "dd/MM/yyyy"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v7, Ljava/util/Date;

    invoke-direct {v7, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v6, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    .line 597
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    goto :goto_0

    .line 601
    :cond_1
    const-string v6, "Select date"

    :goto_0
    invoke-static {p1, v6}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v4

    const/16 v5, 0x2711

    .line 602
    invoke-virtual {v4, v5}, Lcom/google/android/material/textview/MaterialTextView;->setId(I)V

    .line 603
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v6, 0x43480000    # 200.0f

    const/4 v7, -0x2

    invoke-direct {v5, v7, v7, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v4, v5}, Lcom/google/android/material/textview/MaterialTextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 605
    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const/4 v4, 0x2

    .line 607
    sget v5, Lcom/argusoft/sewa/android/app/R$drawable;->ic_calender:I

    invoke-static {p1, v4, v5, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getImageView(Landroid/content/Context;IILandroid/widget/LinearLayout$LayoutParams;)Landroid/widget/ImageView;

    move-result-object v2

    .line 608
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v4, v7, v7, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 609
    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 611
    sget v2, Lcom/argusoft/sewa/android/app/util/SewaUtil;->CURRENT_THEME:I

    sget v4, Lcom/argusoft/sewa/android/app/R$style;->techo_training_app:I

    if-ne v2, v4, :cond_2

    .line 612
    sget v2, Lcom/argusoft/sewa/android/app/R$drawable;->training_custom_datepicker:I

    invoke-virtual {p1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 614
    :cond_2
    sget v2, Lcom/argusoft/sewa/android/app/R$drawable;->custom_datepicker:I

    invoke-virtual {p1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 617
    :goto_1
    new-instance v2, Lcom/argusoft/sewa/android/app/component/listeners/DateChangeListener;

    invoke-direct {v2, p0, p1}, Lcom/argusoft/sewa/android/app/component/listeners/DateChangeListener;-><init>(Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;Landroid/content/Context;)V

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 618
    sget-object p1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->formType:Ljava/lang/String;

    if-eqz p1, :cond_3

    sget-object p1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->formType:Ljava/lang/String;

    const-string v2, "FHS"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->isDobScannedFromAadhar:Ljava/lang/Boolean;

    .line 619
    invoke-virtual {p1, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getId()I

    move-result p0

    const/16 p1, 0x11

    if-ne p0, p1, :cond_3

    .line 620
    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 623
    :cond_3
    new-instance p0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {p0, v0, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, p0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 624
    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 p1, 0x32

    .line 625
    invoke-virtual {p0, v1, v1, v1, p1}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    return-object v3
.end method

.method public static getCustomTimePicker(Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;Landroid/content/Context;)Landroid/widget/LinearLayout;
    .locals 8

    const/4 v0, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 558
    invoke-static {p1, v0, v1, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getLinearLayout(Landroid/content/Context;IILandroid/widget/LinearLayout$LayoutParams;)Landroid/widget/LinearLayout;

    move-result-object v3

    const/16 v4, 0x10

    .line 559
    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 560
    const-string v4, "Select time"

    .line 562
    invoke-static {p1, v4}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v4

    const/16 v5, 0x2711

    .line 563
    invoke-virtual {v4, v5}, Lcom/google/android/material/textview/MaterialTextView;->setId(I)V

    .line 564
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v6, 0x43480000    # 200.0f

    const/4 v7, -0x2

    invoke-direct {v5, v7, v7, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v4, v5}, Lcom/google/android/material/textview/MaterialTextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 566
    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const/4 v4, 0x2

    .line 568
    sget v5, Lcom/argusoft/sewa/android/app/R$drawable;->ic_timepicker:I

    invoke-static {p1, v4, v5, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getImageView(Landroid/content/Context;IILandroid/widget/LinearLayout$LayoutParams;)Landroid/widget/ImageView;

    move-result-object v2

    .line 569
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v4, v7, v7, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 570
    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 571
    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 573
    sget v2, Lcom/argusoft/sewa/android/app/util/SewaUtil;->CURRENT_THEME:I

    sget v4, Lcom/argusoft/sewa/android/app/R$style;->techo_training_app:I

    if-ne v2, v4, :cond_0

    .line 574
    sget v2, Lcom/argusoft/sewa/android/app/R$drawable;->training_custom_datepicker:I

    invoke-virtual {p1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 576
    :cond_0
    sget v2, Lcom/argusoft/sewa/android/app/R$drawable;->custom_datepicker:I

    invoke-virtual {p1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 578
    :goto_0
    new-instance v2, Lcom/argusoft/sewa/android/app/component/listeners/TimeChangeListener;

    invoke-direct {v2, p0, p1}, Lcom/argusoft/sewa/android/app/component/listeners/TimeChangeListener;-><init>(Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;Landroid/content/Context;)V

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 579
    new-instance p0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {p0, v0, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, p0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 580
    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 p1, 0x32

    .line 581
    invoke-virtual {p0, v1, v1, v1, p1}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    return-object v3
.end method

.method public static getFormSubmissionComponent(Landroid/content/Context;Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)Landroid/widget/LinearLayout;
    .locals 5

    .line 526
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/argusoft/sewa/android/app/R$layout;->form_submission_component:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 528
    sget v1, Lcom/argusoft/sewa/android/app/R$id;->submitButton:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/button/MaterialButton;

    .line 529
    sget v2, Lcom/argusoft/sewa/android/app/R$id;->reviewButton:I

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/material/button/MaterialButton;

    .line 531
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    .line 533
    new-instance v4, Lcom/argusoft/sewa/android/app/component/MyDynamicComponents$2;

    invoke-direct {v4, p1, v3, p0}, Lcom/argusoft/sewa/android/app/component/MyDynamicComponents$2;-><init>(Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;Lcom/argusoft/sewa/android/app/databean/OptionTagBean;Landroid/content/Context;)V

    .line 541
    invoke-virtual {v1, v4}, Lcom/google/android/material/button/MaterialButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 543
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object v1

    const/4 v3, 0x1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    .line 544
    new-instance v3, Lcom/argusoft/sewa/android/app/component/MyDynamicComponents$3;

    invoke-direct {v3, p1, v1, p0}, Lcom/argusoft/sewa/android/app/component/MyDynamicComponents$3;-><init>(Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;Lcom/argusoft/sewa/android/app/databean/OptionTagBean;Landroid/content/Context;)V

    .line 553
    invoke-virtual {v2, v3}, Lcom/google/android/material/button/MaterialButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0
.end method

.method private static getFormulaValue(Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 2253
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getFormulas()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getFormulas()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2256
    :cond_0
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getFormulas()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/databean/FormulaTagBean;

    .line 2257
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/FormulaTagBean;->getFormulavalue()Ljava/lang/String;

    move-result-object v0

    const-string v2, "-"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 2258
    array-length v2, v0

    const/4 v3, 0x1

    if-le v2, v3, :cond_1

    const/4 v2, 0x0

    aget-object v2, v0, v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2259
    aget-object p0, v0, v3

    return-object p0

    :cond_2
    :goto_0
    return-object v1
.end method

.method public static getHBComponent(Landroid/content/Context;Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)Landroid/widget/LinearLayout;
    .locals 8

    .line 1228
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0x2710

    const/4 v3, 0x1

    .line 1229
    invoke-static {p0, v2, v3, v0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getLinearLayout(Landroid/content/Context;IILandroid/widget/LinearLayout$LayoutParams;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 1233
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getFormulas()Ljava/util/List;

    move-result-object v2

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getFormulas()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1234
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getFormulas()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/argusoft/sewa/android/app/databean/FormulaTagBean;

    .line 1235
    invoke-virtual {v5}, Lcom/argusoft/sewa/android/app/databean/FormulaTagBean;->getFormulavalue()Ljava/lang/String;

    move-result-object v6

    const-string v7, "-"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1237
    invoke-virtual {v5}, Lcom/argusoft/sewa/android/app/databean/FormulaTagBean;->getFormulavalue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 1238
    aget-object v6, v5, v4

    const-string v7, "sethaemoglobin"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    array-length v6, v5

    const/4 v7, 0x2

    if-ne v6, v7, :cond_0

    .line 1239
    sget-object v6, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    aget-object v5, v5, v3

    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    if-eqz v5, :cond_0

    .line 1241
    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1242
    const-string v6, "\\."

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v4

    .line 1244
    :cond_1
    invoke-virtual {p1, v5}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    .line 1251
    const-string v3, "Haemoglobin (g/dl)"

    invoke-static {v2, v2, p0, v3}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v5

    const/16 v6, 0x2711

    const/4 v7, 0x4

    .line 1252
    invoke-static {p0, v3, v6, v7, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getEditText(Landroid/content/Context;Ljava/lang/String;III)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object v1

    const/16 v3, -0x14

    const/16 v6, 0x32

    .line 1253
    invoke-virtual {v1, v4, v3, v4, v6}, Lcom/google/android/material/textfield/TextInputLayout;->setPadding(IIII)V

    .line 1254
    invoke-virtual {v1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 1255
    invoke-virtual {v1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v3

    const/16 v7, 0x2000

    invoke-virtual {v3, v7}, Landroid/widget/EditText;->setInputType(I)V

    .line 1261
    :cond_3
    const-string v3, "Condition"

    invoke-static {v2, v2, p0, v3}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v2

    .line 1262
    const-string v3, "Not available"

    invoke-static {p0, v3}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v3

    .line 1263
    invoke-virtual {v3, v4, v4, v4, v6}, Lcom/google/android/material/textview/MaterialTextView;->setPadding(IIII)V

    .line 1268
    invoke-virtual {v1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v4

    new-instance v6, Lcom/argusoft/sewa/android/app/component/MyDynamicComponents$11;

    invoke-direct {v6, p0, v3, p1}, Lcom/argusoft/sewa/android/app/component/MyDynamicComponents$11;-><init>(Landroid/content/Context;Lcom/google/android/material/textview/MaterialTextView;Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)V

    invoke-virtual {v4, v6}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1285
    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1286
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1287
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1288
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-object v0
.end method

.method public static getHealthIdManagementView(Landroid/content/Context;Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)Landroid/view/View;
    .locals 6

    .line 3124
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v2, 0x1

    invoke-static {p0, v1, v2, v0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getLinearLayout(Landroid/content/Context;IILandroid/widget/LinearLayout$LayoutParams;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 3126
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v3, 0x190

    invoke-direct {v1, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0x64

    const/16 v4, 0x14

    const/4 v5, 0x0

    .line 3127
    invoke-virtual {v1, v5, v3, v5, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    const/16 v3, 0x11

    .line 3128
    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 3129
    sget v3, Lcom/argusoft/sewa/android/app/R$drawable;->menu_ncd_reg:I

    invoke-static {p0, v2, v3, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getImageView(Landroid/content/Context;IILandroid/widget/LinearLayout$LayoutParams;)Landroid/widget/ImageView;

    move-result-object v1

    .line 3130
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 3132
    const-string v2, "Tap here to create or link ABHA number for the beneficiary"

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v2

    const/4 v3, 0x4

    .line 3133
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextAlignment(I)V

    .line 3134
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 3136
    new-instance v2, Lcom/argusoft/sewa/android/app/component/MyDynamicComponents$19;

    invoke-direct {v2, p1}, Lcom/argusoft/sewa/android/app/component/MyDynamicComponents$19;-><init>(Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)V

    check-cast p0, Landroid/app/Activity;

    .line 3225
    invoke-static {p1}, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->getLoopId(Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)I

    move-result p1

    .line 3224
    invoke-virtual {v2, p0, p1}, Lcom/argusoft/sewa/android/app/component/MyDynamicComponents$19;->setActivity(Landroid/app/Activity;I)Landroid/view/View$OnClickListener;

    move-result-object p0

    .line 3136
    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0
.end method

.method public static getHealthInfrastructureComponent(Landroid/content/Context;Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;Ljava/lang/String;)Landroid/widget/LinearLayout;
    .locals 10

    .line 744
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0x2729

    const/4 v2, 0x1

    .line 745
    invoke-static {p0, v1, v2, v0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getLinearLayout(Landroid/content/Context;IILandroid/widget/LinearLayout$LayoutParams;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 747
    sget-object v1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->healthInfrastructureService:Lcom/argusoft/sewa/android/app/core/HealthInfrastructureService;

    invoke-interface {v1}, Lcom/argusoft/sewa/android/app/core/HealthInfrastructureService;->retrieveDistinctHealthInfraType()Ljava/util/Map;

    move-result-object v8

    .line 749
    invoke-interface {v8}, Ljava/util/Map;->size()I

    move-result v1

    add-int/2addr v1, v2

    new-array v1, v1, [Ljava/lang/String;

    .line 750
    const-string v3, "-Select-"

    invoke-static {v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v1, v4

    .line 752
    invoke-interface {v8}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v5, 0x1

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 753
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    aput-object v6, v1, v5

    add-int/2addr v5, v2

    goto :goto_0

    :cond_0
    const/16 v2, 0x272a

    .line 757
    invoke-static {p0, v1, v4, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getSpinner(Landroid/content/Context;[Ljava/lang/String;II)Landroid/widget/Spinner;

    move-result-object v1

    .line 759
    new-instance v2, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;

    move-object v3, v2

    move-object v4, p0

    move-object v5, p1

    move-object v6, v0

    move-object v7, v1

    move-object v9, p2

    invoke-direct/range {v3 .. v9}, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;-><init>(Landroid/content/Context;Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;Landroid/widget/LinearLayout;Landroid/widget/Spinner;Ljava/util/Map;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 762
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-object v0
.end method

.method public static getHealthInfrastructureComponentNPCB(Landroid/content/Context;Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;Ljava/lang/String;)Landroid/widget/LinearLayout;
    .locals 10

    .line 767
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0x2729

    const/4 v2, 0x1

    .line 768
    invoke-static {p0, v1, v2, v0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getLinearLayout(Landroid/content/Context;IILandroid/widget/LinearLayout$LayoutParams;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 771
    sget-object v1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->healthInfrastructureService:Lcom/argusoft/sewa/android/app/core/HealthInfrastructureService;

    invoke-interface {v1}, Lcom/argusoft/sewa/android/app/core/HealthInfrastructureService;->retrieveDistinctHealthInfraType()Ljava/util/Map;

    move-result-object v1

    .line 774
    const-string v7, "Private Hospital"

    const-string v8, "PMJAY Hospital"

    const-string v3, "Medical College Hospital"

    const-string v4, "Distrct Hospital"

    const-string v5, "Sub District Hospital"

    const-string v6, "Trust Hospital"

    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 785
    new-instance v8, Ljava/util/LinkedHashMap;

    invoke-direct {v8}, Ljava/util/LinkedHashMap;-><init>()V

    .line 786
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 787
    new-instance v5, Ljava/util/HashSet;

    invoke-static {v4}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 788
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 789
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v8, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7, v5}, Lcom/argusoft/sewa/android/app/component/MyDynamicComponents;->isSimilarInfraType(Ljava/lang/String;Ljava/util/Set;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 790
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v8, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 796
    :cond_2
    invoke-interface {v8}, Ljava/util/Map;->size()I

    move-result v1

    add-int/2addr v1, v2

    new-array v1, v1, [Ljava/lang/String;

    .line 797
    const-string v3, "-Select-"

    invoke-static {v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v1, v4

    .line 799
    invoke-interface {v8}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    add-int/lit8 v6, v2, 0x1

    .line 800
    aput-object v5, v1, v2

    move v2, v6

    goto :goto_1

    :cond_3
    const/16 v2, 0x272a

    .line 803
    invoke-static {p0, v1, v4, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getSpinner(Landroid/content/Context;[Ljava/lang/String;II)Landroid/widget/Spinner;

    move-result-object v1

    .line 807
    new-instance v2, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListenerNPCB;

    move-object v3, v2

    move-object v4, p0

    move-object v5, p1

    move-object v6, v0

    move-object v7, v1

    move-object v9, p2

    invoke-direct/range {v3 .. v9}, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListenerNPCB;-><init>(Landroid/content/Context;Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;Landroid/widget/LinearLayout;Landroid/widget/Spinner;Ljava/util/Map;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 810
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-object v0
.end method

.method public static getHealthInfrastructureTypeComponent(Landroid/content/Context;Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)Landroid/widget/LinearLayout;
    .locals 9

    .line 3297
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    const/4 v2, -0x1

    invoke-direct {v0, v2, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v1, 0x1

    invoke-static {p0, v2, v1, v0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getLinearLayout(Landroid/content/Context;IILandroid/widget/LinearLayout$LayoutParams;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 3299
    sget-object v3, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->healthInfrastructureService:Lcom/argusoft/sewa/android/app/core/HealthInfrastructureService;

    invoke-interface {v3}, Lcom/argusoft/sewa/android/app/core/HealthInfrastructureService;->retrieveDistinctHealthInfraType()Ljava/util/Map;

    move-result-object v3

    .line 3301
    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v4

    add-int/2addr v4, v1

    new-array v4, v4, [Ljava/lang/String;

    .line 3302
    const-string v5, "-Select-"

    invoke-static {v5}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    .line 3304
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const/4 v7, 0x1

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .line 3305
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    aput-object v8, v4, v7

    add-int/2addr v7, v1

    goto :goto_0

    .line 3309
    :cond_0
    invoke-static {p0, v4, v6, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getSpinner(Landroid/content/Context;[Ljava/lang/String;II)Landroid/widget/Spinner;

    move-result-object p0

    .line 3311
    new-instance v1, Lcom/argusoft/sewa/android/app/component/MyDynamicComponents$21;

    invoke-direct {v1, p0, v3, v4, p1}, Lcom/argusoft/sewa/android/app/component/MyDynamicComponents$21;-><init>(Landroid/widget/Spinner;Ljava/util/Map;[Ljava/lang/String;Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)V

    invoke-virtual {p0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 3335
    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-object v0
.end method

.method public static getHusbandWifeRelationshipView(Landroid/content/Context;Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)Landroid/widget/LinearLayout;
    .locals 14

    .line 1501
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0x2710

    const/4 v2, 0x1

    .line 1502
    invoke-static {p0, v1, v2, v0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getLinearLayout(Landroid/content/Context;IILandroid/widget/LinearLayout$LayoutParams;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 1504
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1505
    const-string v2, "loopCounterForMaleMarriedMembers"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    .line 1506
    const-string v4, "loopCounterForWifeMembers"

    invoke-interface {v1, v4, v3}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 1507
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_5

    .line 1508
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 1509
    const-string v4, "0"

    const-string v5, "lastName"

    const-string v6, " "

    const-string v7, "firstName"

    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_1

    .line 1510
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 1512
    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 1513
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v10, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-interface {v10, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v10, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    .line 1514
    invoke-interface {v10, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_1

    .line 1516
    :cond_0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v10, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v10, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 1517
    invoke-interface {v10, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1519
    :goto_1
    invoke-interface {v3, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1523
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1524
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 1525
    const-string v9, "-Select-"

    invoke-static {v9}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v2, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1526
    new-instance v10, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-direct {v10}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;-><init>()V

    .line 1527
    const-string v11, "-2"

    invoke-virtual {v10, v11}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->setKey(Ljava/lang/String;)V

    .line 1528
    invoke-static {v9}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v10, v9}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->setValue(Ljava/lang/String;)V

    .line 1529
    invoke-interface {v8, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1530
    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_2

    .line 1531
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    .line 1532
    new-instance v10, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-direct {v10}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;-><init>()V

    .line 1533
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, ""

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->setKey(Ljava/lang/String;)V

    .line 1534
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->setValue(Ljava/lang/String;)V

    .line 1535
    invoke-interface {v8, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1536
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1539
    :cond_2
    const-string v3, "Not available"

    invoke-static {v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1540
    new-instance v9, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-direct {v9}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;-><init>()V

    .line 1541
    const-string v10, "-1"

    invoke-virtual {v9, v10}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->setKey(Ljava/lang/String;)V

    .line 1542
    invoke-static {v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->setValue(Ljava/lang/String;)V

    .line 1543
    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1544
    invoke-virtual {p1, v8}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setOptions(Ljava/util/List;)V

    .line 1546
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1548
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1549
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-interface {v9, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v9, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    .line 1550
    invoke-interface {v9, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_4

    .line 1552
    :cond_3
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v9, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1553
    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1555
    :goto_4
    invoke-static {p0, v8}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateInstructionView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1557
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {p0, p1, v3}, Lcom/argusoft/sewa/android/app/component/MyDynamicComponents;->getSpinner(Landroid/content/Context;Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;I)Landroid/widget/Spinner;

    move-result-object v3

    .line 1558
    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->createAdapter(Ljava/util/List;)Landroid/widget/ArrayAdapter;

    move-result-object v8

    invoke-virtual {v3, v8}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 1559
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1560
    new-instance v8, Lcom/argusoft/sewa/android/app/component/MyDynamicComponents$13;

    invoke-direct {v8, p1, v3}, Lcom/argusoft/sewa/android/app/component/MyDynamicComponents$13;-><init>(Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;Landroid/widget/Spinner;)V

    invoke-virtual {v3, v8}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    goto/16 :goto_3

    .line 1598
    :cond_4
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getAnswer()Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_6

    .line 1599
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getAnswer()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 1601
    new-instance v1, Lcom/argusoft/sewa/android/app/component/MyDynamicComponents$14;

    invoke-direct {v1}, Lcom/argusoft/sewa/android/app/component/MyDynamicComponents$14;-><init>()V

    .line 1602
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/component/MyDynamicComponents$14;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    .line 1603
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    .line 1604
    invoke-virtual {v2, p0, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    if-eqz p0, :cond_6

    .line 1605
    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    .line 1606
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_5
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1607
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1608
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1609
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    .line 1610
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getOptions()Ljava/util/List;

    move-result-object v3

    .line 1611
    new-instance v4, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-direct {v4}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;-><init>()V

    .line 1612
    invoke-virtual {v4, v1}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->setKey(Ljava/lang/String;)V

    .line 1613
    invoke-interface {v3, v4}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 1614
    invoke-virtual {v2, v1}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_5

    .line 1620
    :cond_5
    const-string p1, "No female married members present"

    invoke-static {p0, p1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateInstructionView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_6
    return-object v0
.end method

.method public static getImmunisationGivenComponent(Landroid/content/Context;Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)Landroid/widget/LinearLayout;
    .locals 19

    move-object/from16 v0, p0

    .line 1626
    new-instance v1, Landroid/widget/TableLayout;

    invoke-direct {v1, v0}, Landroid/widget/TableLayout;-><init>(Landroid/content/Context;)V

    const/16 v2, 0xa

    .line 1627
    invoke-virtual {v1, v2, v2, v2, v2}, Landroid/widget/TableLayout;->setPadding(IIII)V

    .line 1628
    new-instance v3, Landroid/widget/TableLayout$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v3, v4, v5}, Landroid/widget/TableLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v3}, Landroid/widget/TableLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1629
    new-instance v3, Landroid/widget/TableRow$LayoutParams;

    invoke-direct {v3, v4}, Landroid/widget/TableRow$LayoutParams;-><init>(I)V

    .line 1630
    new-instance v6, Landroid/widget/TableRow$LayoutParams;

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    invoke-direct {v6, v8, v5, v7}, Landroid/widget/TableRow$LayoutParams;-><init>(IIF)V

    .line 1633
    new-instance v7, Landroid/widget/TableRow;

    invoke-direct {v7, v0}, Landroid/widget/TableRow;-><init>(Landroid/content/Context;)V

    const/16 v9, 0xf

    .line 1634
    invoke-virtual {v7, v2, v9, v2, v9}, Landroid/widget/TableRow;->setPadding(IIII)V

    .line 1635
    sget v9, Lcom/argusoft/sewa/android/app/util/SewaUtil;->CURRENT_THEME:I

    sget v10, Lcom/argusoft/sewa/android/app/R$style;->techo_training_app:I

    if-ne v9, v10, :cond_0

    .line 1636
    sget v9, Lcom/argusoft/sewa/android/app/R$drawable;->table_row_selector:I

    invoke-virtual {v7, v9}, Landroid/widget/TableRow;->setBackgroundResource(I)V

    goto :goto_0

    .line 1638
    :cond_0
    sget v9, Lcom/argusoft/sewa/android/app/R$drawable;->spinner_item_border:I

    invoke-virtual {v7, v9}, Landroid/widget/TableRow;->setBackgroundResource(I)V

    .line 1640
    :goto_0
    invoke-virtual {v7, v3}, Landroid/widget/TableRow;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1641
    new-instance v9, Lcom/google/android/material/textview/MaterialTextView;

    invoke-direct {v9, v0}, Lcom/google/android/material/textview/MaterialTextView;-><init>(Landroid/content/Context;)V

    .line 1642
    new-instance v10, Lcom/google/android/material/textview/MaterialTextView;

    invoke-direct {v10, v0}, Lcom/google/android/material/textview/MaterialTextView;-><init>(Landroid/content/Context;)V

    const/16 v11, 0x10

    .line 1643
    invoke-virtual {v9, v11}, Lcom/google/android/material/textview/MaterialTextView;->setGravity(I)V

    .line 1644
    invoke-virtual {v10, v11}, Lcom/google/android/material/textview/MaterialTextView;->setGravity(I)V

    const/16 v12, 0x14

    .line 1645
    invoke-virtual {v9, v12, v2, v12, v2}, Lcom/google/android/material/textview/MaterialTextView;->setPadding(IIII)V

    .line 1646
    invoke-virtual {v10, v12, v2, v12, v2}, Lcom/google/android/material/textview/MaterialTextView;->setPadding(IIII)V

    .line 1647
    const-string v12, "Immunisation"

    invoke-static {v12}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Lcom/google/android/material/textview/MaterialTextView;->setText(Ljava/lang/CharSequence;)V

    .line 1648
    const-string v12, "Date"

    invoke-static {v12}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Lcom/google/android/material/textview/MaterialTextView;->setText(Ljava/lang/CharSequence;)V

    .line 1649
    sget-object v12, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v9, v12}, Lcom/google/android/material/textview/MaterialTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1650
    sget-object v12, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v10, v12}, Lcom/google/android/material/textview/MaterialTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1651
    invoke-virtual {v7, v9, v6}, Landroid/widget/TableRow;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1652
    invoke-virtual {v7, v10, v6}, Landroid/widget/TableRow;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1653
    invoke-virtual {v1, v7, v8}, Landroid/widget/TableLayout;->addView(Landroid/view/View;I)V

    .line 1656
    sget-object v7, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-virtual/range {p1 .. p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getRelatedpropertyname()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    if-eqz v7, :cond_a

    .line 1660
    sget-boolean v10, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->isOnlineSearch:Z

    if-eqz v10, :cond_1

    .line 1661
    sget-object v7, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->onLineSelectedMemberBean:Lcom/argusoft/sewa/android/app/model/MemberBean;

    goto :goto_1

    .line 1663
    :cond_1
    sget-object v10, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->sewaFhsService:Lcom/argusoft/sewa/android/app/core/SewaFhsService;

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v10, v7}, Lcom/argusoft/sewa/android/app/core/SewaFhsService;->retrieveMemberBeanByActualId(Ljava/lang/Long;)Lcom/argusoft/sewa/android/app/model/MemberBean;

    move-result-object v7

    :goto_1
    if-eqz v7, :cond_a

    .line 1667
    sget-object v10, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->immunisationService:Lcom/argusoft/sewa/android/app/core/ImmunisationService;

    invoke-virtual {v7}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getDob()Ljava/util/Date;

    move-result-object v12

    invoke-virtual {v7}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getImmunisationGiven()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Ljava/util/Date;

    invoke-direct {v14}, Ljava/util/Date;-><init>()V

    const/4 v15, 0x0

    invoke-interface {v10, v12, v13, v14, v15}, Lcom/argusoft/sewa/android/app/core/ImmunisationService;->getDueImmunisationsForChild(Ljava/util/Date;Ljava/lang/String;Ljava/util/Date;Ljava/util/Map;)Ljava/util/Set;

    move-result-object v10

    .line 1668
    invoke-virtual {v7}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getImmunisationGiven()Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_4

    .line 1669
    invoke-virtual {v7}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getImmunisationGiven()Ljava/lang/String;

    move-result-object v12

    const-string v13, ","

    invoke-virtual {v12, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 1670
    array-length v13, v12

    const/4 v14, 0x0

    const/4 v15, 0x1

    :goto_2
    if-ge v14, v13, :cond_5

    aget-object v4, v12, v14

    .line 1671
    const-string v5, "#"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 1673
    new-instance v5, Landroid/widget/TableRow;

    invoke-direct {v5, v0}, Landroid/widget/TableRow;-><init>(Landroid/content/Context;)V

    .line 1674
    sget v9, Lcom/argusoft/sewa/android/app/util/SewaUtil;->CURRENT_THEME:I

    sget v8, Lcom/argusoft/sewa/android/app/R$style;->techo_training_app:I

    if-ne v9, v8, :cond_2

    .line 1675
    sget v8, Lcom/argusoft/sewa/android/app/R$drawable;->table_row_selector:I

    invoke-virtual {v5, v8}, Landroid/widget/TableRow;->setBackgroundResource(I)V

    goto :goto_3

    .line 1677
    :cond_2
    sget v8, Lcom/argusoft/sewa/android/app/R$drawable;->spinner_item_border:I

    invoke-virtual {v5, v8}, Landroid/widget/TableRow;->setBackgroundResource(I)V

    .line 1679
    :goto_3
    invoke-virtual {v5, v3}, Landroid/widget/TableRow;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1681
    new-instance v8, Lcom/google/android/material/textview/MaterialTextView;

    invoke-direct {v8, v0}, Lcom/google/android/material/textview/MaterialTextView;-><init>(Landroid/content/Context;)V

    .line 1682
    new-instance v9, Lcom/google/android/material/textview/MaterialTextView;

    invoke-direct {v9, v0}, Lcom/google/android/material/textview/MaterialTextView;-><init>(Landroid/content/Context;)V

    .line 1684
    invoke-virtual {v8, v2, v2, v2, v2}, Lcom/google/android/material/textview/MaterialTextView;->setPadding(IIII)V

    .line 1685
    invoke-virtual {v9, v2, v2, v2, v2}, Lcom/google/android/material/textview/MaterialTextView;->setPadding(IIII)V

    .line 1686
    invoke-virtual {v8, v11}, Lcom/google/android/material/textview/MaterialTextView;->setGravity(I)V

    .line 1687
    invoke-virtual {v9, v11}, Lcom/google/android/material/textview/MaterialTextView;->setGravity(I)V

    const/16 v16, 0x0

    .line 1688
    aget-object v17, v4, v16

    invoke-static/range {v17 .. v17}, Lcom/argusoft/sewa/android/app/constants/FullFormConstants;->getFullFormOfVaccines(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Lcom/google/android/material/textview/MaterialTextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v11, 0x1

    .line 1689
    aget-object v4, v4, v11

    invoke-virtual {v9, v4}, Lcom/google/android/material/textview/MaterialTextView;->setText(Ljava/lang/CharSequence;)V

    .line 1691
    sget v4, Lcom/argusoft/sewa/android/app/util/SewaUtil;->CURRENT_THEME:I

    sget v11, Lcom/argusoft/sewa/android/app/R$style;->techo_training_app:I

    if-ne v4, v11, :cond_3

    .line 1692
    sget v4, Lcom/argusoft/sewa/android/app/R$drawable;->table_row_selector:I

    invoke-virtual {v9, v4}, Lcom/google/android/material/textview/MaterialTextView;->setBackgroundResource(I)V

    .line 1693
    sget v4, Lcom/argusoft/sewa/android/app/R$drawable;->table_row_selector:I

    invoke-virtual {v8, v4}, Lcom/google/android/material/textview/MaterialTextView;->setBackgroundResource(I)V

    goto :goto_4

    .line 1695
    :cond_3
    sget v4, Lcom/argusoft/sewa/android/app/R$drawable;->spinner_item_border:I

    invoke-virtual {v9, v4}, Lcom/google/android/material/textview/MaterialTextView;->setBackgroundResource(I)V

    .line 1696
    sget v4, Lcom/argusoft/sewa/android/app/R$drawable;->spinner_item_border:I

    invoke-virtual {v8, v4}, Lcom/google/android/material/textview/MaterialTextView;->setBackgroundResource(I)V

    .line 1699
    :goto_4
    invoke-virtual {v5, v8, v6}, Landroid/widget/TableRow;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1700
    invoke-virtual {v5, v9, v6}, Landroid/widget/TableRow;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1701
    invoke-virtual {v1, v5, v15}, Landroid/widget/TableLayout;->addView(Landroid/view/View;I)V

    add-int/lit8 v15, v15, 0x1

    add-int/lit8 v14, v14, 0x1

    const/4 v4, -0x1

    const/4 v5, -0x2

    const/4 v8, 0x0

    const/16 v11, 0x10

    goto :goto_2

    :cond_4
    const/4 v15, 0x1

    :cond_5
    if-eqz v10, :cond_a

    .line 1706
    invoke-interface {v10}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_a

    .line 1707
    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v10, v5

    check-cast v10, Ljava/lang/String;

    .line 1708
    new-instance v5, Landroid/widget/TableRow;

    invoke-direct {v5, v0}, Landroid/widget/TableRow;-><init>(Landroid/content/Context;)V

    .line 1709
    sget v8, Lcom/argusoft/sewa/android/app/util/SewaUtil;->CURRENT_THEME:I

    sget v9, Lcom/argusoft/sewa/android/app/R$style;->techo_training_app:I

    if-ne v8, v9, :cond_6

    .line 1710
    sget v8, Lcom/argusoft/sewa/android/app/R$drawable;->table_row_selector:I

    invoke-virtual {v5, v8}, Landroid/widget/TableRow;->setBackgroundResource(I)V

    goto :goto_6

    .line 1712
    :cond_6
    sget v8, Lcom/argusoft/sewa/android/app/R$drawable;->spinner_item_border:I

    invoke-virtual {v5, v8}, Landroid/widget/TableRow;->setBackgroundResource(I)V

    .line 1714
    :goto_6
    invoke-virtual {v5, v3}, Landroid/widget/TableRow;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1716
    new-instance v14, Lcom/google/android/material/textview/MaterialTextView;

    invoke-direct {v14, v0}, Lcom/google/android/material/textview/MaterialTextView;-><init>(Landroid/content/Context;)V

    .line 1717
    new-instance v13, Lcom/google/android/material/textview/MaterialTextView;

    invoke-direct {v13, v0}, Lcom/google/android/material/textview/MaterialTextView;-><init>(Landroid/content/Context;)V

    .line 1718
    invoke-virtual {v14, v2, v2, v2, v2}, Lcom/google/android/material/textview/MaterialTextView;->setPadding(IIII)V

    .line 1719
    invoke-virtual {v13, v2, v2, v2, v2}, Lcom/google/android/material/textview/MaterialTextView;->setPadding(IIII)V

    const/16 v12, 0x10

    .line 1720
    invoke-virtual {v14, v12}, Lcom/google/android/material/textview/MaterialTextView;->setGravity(I)V

    .line 1721
    invoke-virtual {v13, v12}, Lcom/google/android/material/textview/MaterialTextView;->setGravity(I)V

    .line 1722
    invoke-static {v10}, Lcom/argusoft/sewa/android/app/constants/FullFormConstants;->getFullFormOfVaccines(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v14, v8}, Lcom/google/android/material/textview/MaterialTextView;->setText(Ljava/lang/CharSequence;)V

    .line 1724
    sget-object v8, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->immunisationService:Lcom/argusoft/sewa/android/app/core/ImmunisationService;

    invoke-virtual {v7}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getDob()Ljava/util/Date;

    move-result-object v9

    new-instance v11, Ljava/util/Date;

    invoke-direct {v11}, Ljava/util/Date;-><init>()V

    invoke-virtual/range {p1 .. p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getLoopCounter()I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->getVaccineGivenDateMap(Ljava/lang/Integer;)Ljava/util/Map;

    move-result-object v16

    const/16 v17, 0x1

    const/16 v18, 0x10

    move-object/from16 v12, v16

    move-object v2, v13

    move/from16 v13, v17

    invoke-interface/range {v8 .. v13}, Lcom/argusoft/sewa/android/app/core/ImmunisationService;->isImmunisationMissedOrNotValid(Ljava/util/Date;Ljava/lang/String;Ljava/util/Date;Ljava/util/Map;Z)Ljava/util/Map;

    move-result-object v8

    .line 1725
    invoke-interface {v8}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_7
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_8

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    .line 1726
    sget-object v10, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v10, v9}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 1727
    const-string v9, "Missed"

    invoke-static {v9}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Lcom/google/android/material/textview/MaterialTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_7

    :cond_7
    const/high16 v9, -0x10000

    .line 1729
    invoke-virtual {v2, v9}, Lcom/google/android/material/textview/MaterialTextView;->setTextColor(I)V

    .line 1730
    const-string v9, "Due Now"

    invoke-static {v9}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Lcom/google/android/material/textview/MaterialTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_7

    .line 1739
    :cond_8
    sget v8, Lcom/argusoft/sewa/android/app/util/SewaUtil;->CURRENT_THEME:I

    sget v9, Lcom/argusoft/sewa/android/app/R$style;->techo_training_app:I

    if-ne v8, v9, :cond_9

    .line 1740
    sget v8, Lcom/argusoft/sewa/android/app/R$drawable;->table_row_selector:I

    invoke-virtual {v2, v8}, Lcom/google/android/material/textview/MaterialTextView;->setBackgroundResource(I)V

    .line 1741
    sget v8, Lcom/argusoft/sewa/android/app/R$drawable;->table_row_selector:I

    invoke-virtual {v14, v8}, Lcom/google/android/material/textview/MaterialTextView;->setBackgroundResource(I)V

    goto :goto_8

    .line 1743
    :cond_9
    sget v8, Lcom/argusoft/sewa/android/app/R$drawable;->spinner_item_border:I

    invoke-virtual {v2, v8}, Lcom/google/android/material/textview/MaterialTextView;->setBackgroundResource(I)V

    .line 1744
    sget v8, Lcom/argusoft/sewa/android/app/R$drawable;->spinner_item_border:I

    invoke-virtual {v14, v8}, Lcom/google/android/material/textview/MaterialTextView;->setBackgroundResource(I)V

    .line 1747
    :goto_8
    invoke-virtual {v5, v14, v6}, Landroid/widget/TableRow;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1748
    invoke-virtual {v5, v2, v6}, Landroid/widget/TableRow;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1749
    invoke-virtual {v1, v5, v15}, Landroid/widget/TableLayout;->addView(Landroid/view/View;I)V

    const/4 v2, 0x1

    add-int/2addr v15, v2

    const/16 v2, 0xa

    goto/16 :goto_5

    :cond_a
    const/4 v2, 0x1

    .line 1755
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-static {v0, v4, v2, v3}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getLinearLayout(Landroid/content/Context;IILandroid/widget/LinearLayout$LayoutParams;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/16 v2, 0xa

    .line 1757
    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 1758
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-object v0
.end method

.method public static getLMSQuestionSetImageBitmap(Landroid/content/Context;Ljava/lang/Long;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1

    if-eqz p1, :cond_0

    .line 3115
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/argusoft/sewa/android/app/util/SewaConstants;->DIR_LMS:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1, p2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getLMSFileName(Ljava/lang/Long;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 3116
    invoke-static {p0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->isFileExists(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3117
    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getLMSQuestionSetImageView(Landroid/content/Context;Ljava/lang/Long;Ljava/lang/String;)Landroid/widget/ImageView;
    .locals 2

    if-eqz p1, :cond_0

    .line 3100
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/argusoft/sewa/android/app/util/SewaConstants;->DIR_LMS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1, p2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getLMSFileName(Ljava/lang/Long;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 3101
    invoke-static {p1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->isFileExists(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 3102
    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 3103
    new-instance p2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v0, -0x2

    const/4 v1, -0x1

    invoke-direct {p2, v1, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-static {p0, v1, v1, p2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getImageView(Landroid/content/Context;IILandroid/widget/LinearLayout$LayoutParams;)Landroid/widget/ImageView;

    move-result-object p0

    const/4 p2, 0x1

    .line 3104
    invoke-virtual {p0, p2}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    .line 3105
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getLocationDrillDownComponent(Landroid/content/Context;Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)Landroid/widget/LinearLayout;
    .locals 9

    const-string v0, "skipCustomLocationAgeRange needs <min>-<max>, got: "

    .line 2489
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-direct {v1, v3, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v2, 0x1

    invoke-static {p0, v3, v2, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getLinearLayout(Landroid/content/Context;IILandroid/widget/LinearLayout$LayoutParams;)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 2494
    new-array v3, v2, [Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;

    .line 2495
    new-instance v4, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;

    sget-object v5, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->locationMasterService:Lcom/argusoft/sewa/android/app/core/LocationMasterService;

    new-instance v6, Lcom/argusoft/sewa/android/app/component/MyDynamicComponents$15;

    invoke-direct {v6, p1, v3}, Lcom/argusoft/sewa/android/app/component/MyDynamicComponents$15;-><init>(Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;[Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;)V

    invoke-direct {v4, p0, v5, v6}, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;-><init>(Landroid/content/Context;Lcom/argusoft/sewa/android/app/core/LocationMasterService;Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent$VillageSelectionListener;)V

    const/4 p0, 0x0

    .line 2510
    aput-object v4, v3, p0

    .line 2511
    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2517
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getDatamap()Ljava/lang/String;

    move-result-object v5

    const-string v6, "allowCustomLocation"

    invoke-static {v5, v6}, Lcom/argusoft/sewa/android/app/component/MyDynamicComponents;->datamapHasFlag(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2518
    new-instance v5, Lcom/argusoft/sewa/android/app/component/MyDynamicComponents$$ExternalSyntheticLambda6;

    invoke-direct {v5, p1, v3}, Lcom/argusoft/sewa/android/app/component/MyDynamicComponents$$ExternalSyntheticLambda6;-><init>(Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;[Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;)V

    invoke-virtual {v4, v2, v5}, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;->setAllowCustomLocation(ZLcom/argusoft/sewa/android/app/component/LocationDrillDownComponent$CustomLocationListener;)V

    .line 2535
    :cond_0
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getDatamap()Ljava/lang/String;

    move-result-object v3

    const-string v5, "skipCustomLocationAgeRange"

    .line 2534
    invoke-static {v3, v5}, Lcom/argusoft/sewa/android/app/component/MyDynamicComponents;->datamapGetValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2536
    const-string v5, "MyDynamicComponents"

    if-eqz v3, :cond_2

    .line 2537
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    const-string v7, "-"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 2539
    :try_start_0
    array-length v7, v6

    const/4 v8, 0x2

    if-ne v7, v8, :cond_1

    .line 2540
    aget-object p0, v6, p0

    .line 2541
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    aget-object v0, v6, v2

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 2540
    invoke-virtual {v4, p0, v0}, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;->setSkipCustomLocationAgeRange(Ljava/lang/Integer;Ljava/lang/Integer;)V

    goto :goto_0

    .line 2543
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2546
    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Invalid skipCustomLocationAgeRange value: "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2550
    :cond_2
    :goto_0
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getRelatedpropertyname()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_5

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getRelatedpropertyname()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-lez p0, :cond_5

    .line 2551
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getRelatedpropertyname()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 2552
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getLoopCounter()I

    move-result v0

    if-lez v0, :cond_3

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->isIgnoreLoop()Z

    move-result v0

    if-nez v0, :cond_3

    .line 2553
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getLoopCounter()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 2555
    :cond_3
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 2556
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_5

    .line 2558
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    .line 2564
    invoke-virtual {v4, v2}, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;->preselectVillage(Ljava/lang/Long;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 2565
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_4
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {p1, v2}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 2567
    :catch_1
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid default village id for related property "

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ": "

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_2
    return-object v1
.end method

.method public static getMemberDetailsComponent(Landroid/content/Context;Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)Landroid/widget/LinearLayout;
    .locals 8

    .line 2937
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/argusoft/sewa/android/app/R$layout;->member_details_component:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 2938
    sget v1, Lcom/argusoft/sewa/android/app/R$id;->memberDetFirst:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/LinearLayout;

    .line 2939
    sget v1, Lcom/argusoft/sewa/android/app/R$id;->moreButton:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/button/MaterialButton;

    const/4 v2, 0x0

    .line 2941
    invoke-static {p1, v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getOptionsOrDataMap(Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;Z)Ljava/util/List;

    move-result-object v5

    .line 2942
    new-instance v7, Ljava/util/LinkedList;

    invoke-direct {v7}, Ljava/util/LinkedList;-><init>()V

    .line 2945
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v2, 0x1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/argusoft/sewa/android/app/databean/OptionDataBean;

    const/16 v6, 0x8

    if-ge v2, v6, :cond_0

    .line 2947
    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2952
    :cond_1
    invoke-static {p0, v4, v7}, Lcom/argusoft/sewa/android/app/component/MyDynamicComponents;->setData(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/util/List;)V

    .line 2954
    new-instance p1, Lcom/argusoft/sewa/android/app/component/MyDynamicComponents$17;

    move-object v2, p1

    move-object v3, p0

    move-object v6, v1

    invoke-direct/range {v2 .. v7}, Lcom/argusoft/sewa/android/app/component/MyDynamicComponents$17;-><init>(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/util/List;Lcom/google/android/material/button/MaterialButton;Ljava/util/List;)V

    invoke-virtual {v1, p1}, Lcom/google/android/material/button/MaterialButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0
.end method

.method public static getMembersListForLCDCCampaign(Landroid/content/Context;Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)Landroid/widget/LinearLayout;
    .locals 10

    .line 227
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v3, 0x1

    invoke-static {p0, v1, v3, v0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getLinearLayout(Landroid/content/Context;IILandroid/widget/LinearLayout$LayoutParams;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/16 v4, 0x10

    .line 228
    invoke-virtual {v0, v4, v4, v4, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 232
    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getDatamap()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getDatamap()Ljava/lang/String;

    move-result-object v4

    const-string v5, "lcdc"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 233
    sget-object v4, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->sewaFhsService:Lcom/argusoft/sewa/android/app/core/SewaFhsService;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getFamilyId()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v4, p1}, Lcom/argusoft/sewa/android/app/core/SewaFhsService;->retrieveLCDCEligibleMembersByFamilyId(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    goto :goto_0

    .line 235
    :cond_0
    sget-object v4, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->sewaFhsService:Lcom/argusoft/sewa/android/app/core/SewaFhsService;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getFamilyId()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v4, p1}, Lcom/argusoft/sewa/android/app/core/SewaFhsService;->retrieveMemberDataBeansExceptArchivedAndDeadByFamilyId(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_3

    .line 239
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    goto/16 :goto_2

    .line 247
    :cond_1
    new-instance v4, Lcom/argusoft/sewa/android/app/component/listeners/LCDCMemberListener;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    invoke-direct {v4, p0, p2, v5}, Lcom/argusoft/sewa/android/app/component/listeners/LCDCMemberListener;-><init>(Landroid/content/Context;Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;I)V

    .line 249
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    .line 250
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-static {p0, v1, v3, v5}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getLinearLayout(Landroid/content/Context;IILandroid/widget/LinearLayout$LayoutParams;)Landroid/widget/LinearLayout;

    move-result-object v5

    const/16 v6, 0xa

    const/4 v7, 0x5

    .line 253
    invoke-virtual {v5, v7, v7, v7, v6}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 255
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMemberFullName(Lcom/argusoft/sewa/android/app/databean/MemberDataBean;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getUniqueHealthId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 258
    sget v7, Lcom/argusoft/sewa/android/app/R$style;->CustomBoldAnswerView:I

    const/4 v8, 0x0

    invoke-static {p0, v6, v1, v7, v8}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getMaterialTextView(Landroid/content/Context;Ljava/lang/String;IIZ)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v6

    .line 260
    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 262
    new-instance v6, Landroid/widget/RadioGroup;

    invoke-direct {v6, p0}, Landroid/widget/RadioGroup;-><init>(Landroid/content/Context;)V

    .line 263
    invoke-virtual {v6, v8}, Landroid/widget/RadioGroup;->setOrientation(I)V

    .line 264
    invoke-virtual {v6, p2}, Landroid/widget/RadioGroup;->setTag(Ljava/lang/Object;)V

    .line 265
    invoke-virtual {v6, v8, v8, v8, v8}, Landroid/widget/RadioGroup;->setPadding(IIII)V

    .line 267
    const-string p2, "Yes"

    invoke-static {p2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v7

    invoke-static {p0, p2, v7}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getRadioButton(Landroid/content/Context;Ljava/lang/String;I)Lcom/google/android/material/radiobutton/MaterialRadioButton;

    move-result-object p2

    .line 268
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p2, v7}, Landroid/widget/RadioButton;->setTag(Ljava/lang/Object;)V

    .line 270
    const-string v7, "No"

    invoke-static {v7}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v8

    invoke-static {p0, v7, v8}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getRadioButton(Landroid/content/Context;Ljava/lang/String;I)Lcom/google/android/material/radiobutton/MaterialRadioButton;

    move-result-object v7

    const/4 v8, 0x2

    .line 271
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/RadioButton;->setTag(Ljava/lang/Object;)V

    .line 273
    const-string v8, "Not available"

    invoke-static {v8}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v9

    invoke-static {p0, v8, v9}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getRadioButton(Landroid/content/Context;Ljava/lang/String;I)Lcom/google/android/material/radiobutton/MaterialRadioButton;

    move-result-object v8

    const/4 v9, 0x3

    .line 274
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/RadioButton;->setTag(Ljava/lang/Object;)V

    .line 276
    new-instance v9, Landroid/widget/RadioGroup$LayoutParams;

    invoke-direct {v9, v2, v2}, Landroid/widget/RadioGroup$LayoutParams;-><init>(II)V

    .line 279
    invoke-virtual {p2, v9}, Landroid/widget/RadioButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 280
    invoke-virtual {v7, v9}, Landroid/widget/RadioButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 281
    invoke-virtual {v8, v9}, Landroid/widget/RadioButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 283
    invoke-virtual {v6, p2}, Landroid/widget/RadioGroup;->addView(Landroid/view/View;)V

    .line 284
    invoke-virtual {v6, v7}, Landroid/widget/RadioGroup;->addView(Landroid/view/View;)V

    .line 285
    invoke-virtual {v6, v8}, Landroid/widget/RadioGroup;->addView(Landroid/view/View;)V

    .line 286
    invoke-virtual {v6, v4}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 288
    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 289
    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_1

    :cond_2
    return-object v0

    .line 240
    :cond_3
    :goto_2
    new-instance p1, Lcom/google/android/material/textview/MaterialTextView;

    const/4 p2, 0x0

    sget v1, Lcom/argusoft/sewa/android/app/R$style;->CustomAnswerView:I

    invoke-direct {p1, p0, p2, v1}, Lcom/google/android/material/textview/MaterialTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 242
    const-string p0, "No eligible members left in the family"

    invoke-static {p0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/google/android/material/textview/MaterialTextView;->setText(Ljava/lang/CharSequence;)V

    .line 243
    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-object v0
.end method

.method public static getMembersListViewForFilariasisCampaign(Landroid/content/Context;Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)Landroid/widget/LinearLayout;
    .locals 16

    move-object/from16 v0, p0

    .line 295
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v4, 0x1

    invoke-static {v0, v2, v4, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getLinearLayout(Landroid/content/Context;IILandroid/widget/LinearLayout$LayoutParams;)Landroid/widget/LinearLayout;

    move-result-object v1

    const/16 v5, 0x10

    .line 296
    invoke-virtual {v1, v5, v5, v5, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 298
    sget-object v5, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->sewaFhsService:Lcom/argusoft/sewa/android/app/core/SewaFhsService;

    invoke-virtual/range {p1 .. p1}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getFamilyId()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/argusoft/sewa/android/app/core/SewaFhsService;->retrieveMemberDataBeansForFilariasisByFamilyId(Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 300
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_0

    goto/16 :goto_1

    .line 307
    :cond_0
    new-instance v6, Lcom/argusoft/sewa/android/app/component/listeners/FilariasisMemberListener;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    move-object/from16 v8, p2

    invoke-direct {v6, v0, v8, v7}, Lcom/argusoft/sewa/android/app/component/listeners/FilariasisMemberListener;-><init>(Landroid/content/Context;Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;I)V

    .line 309
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    .line 310
    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v8, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-static {v0, v2, v4, v8}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getLinearLayout(Landroid/content/Context;IILandroid/widget/LinearLayout$LayoutParams;)Landroid/widget/LinearLayout;

    move-result-object v8

    const/16 v9, 0xa

    const/4 v10, 0x5

    .line 311
    invoke-virtual {v8, v10, v10, v10, v9}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 313
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v7}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMemberFullName(Lcom/argusoft/sewa/android/app/databean/MemberDataBean;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " ("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 314
    invoke-virtual {v7}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getUniqueHealthId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 316
    sget v10, Lcom/argusoft/sewa/android/app/R$style;->CustomBoldAnswerView:I

    const/4 v11, 0x0

    invoke-static {v0, v9, v2, v10, v11}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getMaterialTextView(Landroid/content/Context;Ljava/lang/String;IIZ)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v9

    .line 317
    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 319
    new-instance v9, Landroid/widget/RadioGroup;

    invoke-direct {v9, v0}, Landroid/widget/RadioGroup;-><init>(Landroid/content/Context;)V

    .line 320
    invoke-virtual {v9, v11}, Landroid/widget/RadioGroup;->setOrientation(I)V

    .line 321
    invoke-virtual {v9, v11, v11, v11, v11}, Landroid/widget/RadioGroup;->setPadding(IIII)V

    .line 323
    const-string v10, "Yes"

    invoke-static {v10}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v12

    invoke-static {v0, v10, v12}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getRadioButton(Landroid/content/Context;Ljava/lang/String;I)Lcom/google/android/material/radiobutton/MaterialRadioButton;

    move-result-object v10

    .line 324
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v10, v12}, Landroid/widget/RadioButton;->setTag(Ljava/lang/Object;)V

    .line 326
    const-string v12, "No"

    invoke-static {v12}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v13

    invoke-static {v0, v12, v13}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getRadioButton(Landroid/content/Context;Ljava/lang/String;I)Lcom/google/android/material/radiobutton/MaterialRadioButton;

    move-result-object v12

    const/4 v13, 0x2

    .line 327
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v12, v14}, Landroid/widget/RadioButton;->setTag(Ljava/lang/Object;)V

    .line 329
    const-string v14, "Not available"

    invoke-static {v14}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v15

    invoke-static {v0, v14, v15}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getRadioButton(Landroid/content/Context;Ljava/lang/String;I)Lcom/google/android/material/radiobutton/MaterialRadioButton;

    move-result-object v14

    const/4 v15, 0x3

    .line 330
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v14, v4}, Landroid/widget/RadioButton;->setTag(Ljava/lang/Object;)V

    .line 332
    new-instance v4, Landroid/widget/RadioGroup$LayoutParams;

    invoke-direct {v4, v3, v3}, Landroid/widget/RadioGroup$LayoutParams;-><init>(II)V

    .line 337
    invoke-virtual {v10, v4}, Landroid/widget/RadioButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 338
    invoke-virtual {v12, v4}, Landroid/widget/RadioButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 339
    invoke-virtual {v14, v4}, Landroid/widget/RadioButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 341
    invoke-virtual {v9, v10}, Landroid/widget/RadioGroup;->addView(Landroid/view/View;)V

    .line 342
    invoke-virtual {v9, v12}, Landroid/widget/RadioGroup;->addView(Landroid/view/View;)V

    .line 343
    invoke-virtual {v9, v14}, Landroid/widget/RadioGroup;->addView(Landroid/view/View;)V

    .line 345
    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 348
    new-instance v4, Lcom/google/android/material/textfield/TextInputLayout;

    invoke-direct {v4, v0}, Lcom/google/android/material/textfield/TextInputLayout;-><init>(Landroid/content/Context;)V

    .line 350
    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v10, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v12, 0x3c

    const/16 v14, 0xc

    .line 354
    invoke-virtual {v10, v12, v14, v11, v14}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 355
    invoke-virtual {v4, v10}, Lcom/google/android/material/textfield/TextInputLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 357
    invoke-virtual {v4, v13}, Lcom/google/android/material/textfield/TextInputLayout;->setBoxBackgroundMode(I)V

    .line 358
    const-string v10, "Reason"

    invoke-static {v10}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Lcom/google/android/material/textfield/TextInputLayout;->setHint(Ljava/lang/CharSequence;)V

    const/4 v10, 0x1

    .line 359
    invoke-virtual {v4, v10}, Lcom/google/android/material/textfield/TextInputLayout;->setHintEnabled(Z)V

    .line 361
    new-instance v11, Lcom/google/android/material/textfield/TextInputEditText;

    invoke-direct {v11, v0}, Lcom/google/android/material/textfield/TextInputEditText;-><init>(Landroid/content/Context;)V

    .line 363
    new-instance v12, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v12, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v11, v12}, Lcom/google/android/material/textfield/TextInputEditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 367
    invoke-virtual {v11, v10}, Lcom/google/android/material/textfield/TextInputEditText;->setMinLines(I)V

    .line 368
    invoke-virtual {v11, v15}, Lcom/google/android/material/textfield/TextInputEditText;->setMaxLines(I)V

    const/16 v12, 0x12

    const/16 v13, 0xe

    .line 369
    invoke-virtual {v11, v12, v13, v12, v13}, Lcom/google/android/material/textfield/TextInputEditText;->setPadding(IIII)V

    .line 371
    invoke-virtual {v4, v11}, Lcom/google/android/material/textfield/TextInputLayout;->addView(Landroid/view/View;)V

    const/16 v12, 0x8

    .line 372
    invoke-virtual {v4, v12}, Lcom/google/android/material/textfield/TextInputLayout;->setVisibility(I)V

    .line 374
    invoke-virtual {v8, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 377
    new-instance v12, Lcom/argusoft/sewa/android/app/component/listeners/FilariasisMemberListener$MemberViewHolder;

    invoke-direct {v12, v7, v4, v11}, Lcom/argusoft/sewa/android/app/component/listeners/FilariasisMemberListener$MemberViewHolder;-><init>(Lcom/argusoft/sewa/android/app/databean/MemberDataBean;Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/textfield/TextInputEditText;)V

    .line 380
    invoke-virtual {v9, v12}, Landroid/widget/RadioGroup;->setTag(Ljava/lang/Object;)V

    .line 381
    invoke-virtual {v9, v6}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 384
    new-instance v4, Lcom/argusoft/sewa/android/app/component/MyDynamicComponents$1;

    invoke-direct {v4, v6, v7}, Lcom/argusoft/sewa/android/app/component/MyDynamicComponents$1;-><init>(Lcom/argusoft/sewa/android/app/component/listeners/FilariasisMemberListener;Lcom/argusoft/sewa/android/app/databean/MemberDataBean;)V

    invoke-virtual {v11, v4}, Lcom/google/android/material/textfield/TextInputEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 399
    invoke-virtual {v1, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const/4 v4, 0x1

    goto/16 :goto_0

    :cond_1
    return-object v1

    .line 301
    :cond_2
    :goto_1
    new-instance v2, Lcom/google/android/material/textview/MaterialTextView;

    const/4 v3, 0x0

    sget v4, Lcom/argusoft/sewa/android/app/R$style;->CustomAnswerView:I

    invoke-direct {v2, v0, v3, v4}, Lcom/google/android/material/textview/MaterialTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 302
    const-string v0, "No eligible members left in the family"

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/google/android/material/textview/MaterialTextView;->setText(Ljava/lang/CharSequence;)V

    .line 303
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-object v1
.end method

.method public static getMotherChildRelationshipView(Landroid/content/Context;Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)Landroid/widget/LinearLayout;
    .locals 29

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1355
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0x2710

    const/4 v4, 0x1

    .line 1356
    invoke-static {v0, v3, v4, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getLinearLayout(Landroid/content/Context;IILandroid/widget/LinearLayout$LayoutParams;)Landroid/widget/LinearLayout;

    move-result-object v2

    .line 1358
    invoke-static/range {p0 .. p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 1359
    const-string v5, "loopCounterForAliveMembers"

    const/4 v6, 0x0

    invoke-interface {v3, v5, v6}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v5

    .line 1360
    const-string v7, "loopCounterForFemaleMarriedMembers"

    invoke-interface {v3, v7, v6}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v3

    .line 1362
    invoke-virtual {v1, v6}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    .line 1364
    const-string v6, "No child present"

    if-eqz v5, :cond_9

    invoke-interface {v5}, Ljava/util/Set;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_9

    if-eqz v3, :cond_9

    .line 1365
    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_9

    .line 1369
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 1370
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    const-string v9, ""

    if-eqz v8, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 1372
    const-string v10, "0"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    move-object v11, v9

    goto :goto_1

    :cond_0
    move-object v11, v8

    .line 1376
    :goto_1
    sget-object v12, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "dob"

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v12, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    if-eqz v12, :cond_6

    .line 1379
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v13

    move-object/from16 v16, v5

    .line 1380
    invoke-static {v12}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v13, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/16 v4, -0xc

    const/4 v5, 0x1

    .line 1381
    invoke-virtual {v13, v5, v4}, Ljava/util/Calendar;->add(II)V

    const/16 v4, 0xb

    const/4 v5, 0x0

    .line 1382
    invoke-virtual {v13, v4, v5}, Ljava/util/Calendar;->set(II)V

    const/16 v12, 0xc

    .line 1383
    invoke-virtual {v13, v12, v5}, Ljava/util/Calendar;->set(II)V

    const/16 v15, 0xd

    .line 1384
    invoke-virtual {v13, v15, v5}, Ljava/util/Calendar;->set(II)V

    const/16 v15, 0xe

    .line 1385
    invoke-virtual {v13, v15, v5}, Ljava/util/Calendar;->set(II)V

    .line 1386
    invoke-virtual {v13}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/util/Date;->getTime()J

    move-result-wide v17

    .line 1388
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 1389
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 1390
    const-string v21, "-Select-"

    invoke-static/range {v21 .. v21}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v15, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1391
    new-instance v4, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-direct {v4}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;-><init>()V

    .line 1392
    const-string v5, "-2"

    invoke-virtual {v4, v5}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->setKey(Ljava/lang/String;)V

    .line 1393
    invoke-static/range {v21 .. v21}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->setValue(Ljava/lang/String;)V

    .line 1394
    invoke-interface {v12, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1396
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    move-object/from16 v21, v3

    const-string v3, "lastName"

    move-object/from16 v23, v9

    const-string v9, " "

    move-object/from16 v24, v6

    const-string v6, "firstName"

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1397
    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_1

    move-object/from16 v3, v21

    move-object/from16 v9, v23

    move-object/from16 v6, v24

    goto :goto_2

    .line 1402
    :cond_1
    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_2

    move-object/from16 v25, v4

    move-object/from16 v26, v10

    move-object/from16 v4, v23

    goto :goto_3

    :cond_2
    move-object/from16 v25, v4

    move-object v4, v5

    move-object/from16 v26, v10

    .line 1406
    :goto_3
    sget-object v10, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    move-object/from16 v27, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v10, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object/from16 v28, v11

    if-eqz v2, :cond_3

    .line 1408
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    invoke-virtual {v13, v10, v11}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/16 v2, 0xb

    const/4 v10, 0x0

    .line 1409
    invoke-virtual {v13, v2, v10}, Ljava/util/Calendar;->set(II)V

    const/16 v11, 0xc

    .line 1410
    invoke-virtual {v13, v11, v10}, Ljava/util/Calendar;->set(II)V

    const/16 v2, 0xd

    .line 1411
    invoke-virtual {v13, v2, v10}, Ljava/util/Calendar;->set(II)V

    const/16 v2, 0xe

    .line 1412
    invoke-virtual {v13, v2, v10}, Ljava/util/Calendar;->set(II)V

    .line 1413
    invoke-virtual {v13}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v19

    cmp-long v22, v19, v17

    if-gtz v22, :cond_3

    .line 1414
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v10, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v10, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1415
    invoke-interface {v6, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1417
    new-instance v3, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-direct {v3}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;-><init>()V

    .line 1418
    invoke-virtual {v3, v5}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->setKey(Ljava/lang/String;)V

    .line 1419
    invoke-virtual {v3, v2}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->setValue(Ljava/lang/String;)V

    .line 1420
    invoke-interface {v12, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1421
    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v15, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    move-object/from16 v3, v21

    move-object/from16 v9, v23

    move-object/from16 v6, v24

    move-object/from16 v4, v25

    move-object/from16 v10, v26

    move-object/from16 v2, v27

    move-object/from16 v11, v28

    goto/16 :goto_2

    :cond_4
    move-object/from16 v27, v2

    move-object/from16 v28, v11

    .line 1426
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_5

    move-object/from16 v5, v16

    move-object/from16 v3, v21

    move-object/from16 v6, v24

    move-object/from16 v2, v27

    goto/16 :goto_0

    .line 1430
    :cond_5
    const-string v2, "Not available"

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v15, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1431
    new-instance v5, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;

    invoke-direct {v5}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;-><init>()V

    .line 1432
    const-string v10, "-1"

    invoke-virtual {v5, v10}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->setKey(Ljava/lang/String;)V

    .line 1433
    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Lcom/argusoft/sewa/android/app/databean/OptionTagBean;->setValue(Ljava/lang/String;)V

    .line 1434
    invoke-interface {v12, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1435
    invoke-virtual {v1, v12}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setOptions(Ljava/util/List;)V

    .line 1436
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v7, v2, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1438
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v6, v28

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v5, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1439
    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1440
    invoke-static {v0, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateInstructionView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v2

    move-object/from16 v3, v27

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1442
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/argusoft/sewa/android/app/component/MyDynamicComponents;->getSpinner(Landroid/content/Context;Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;I)Landroid/widget/Spinner;

    move-result-object v2

    .line 1443
    invoke-static {v15}, Lcom/argusoft/sewa/android/app/util/UtilBean;->createAdapter(Ljava/util/List;)Landroid/widget/ArrayAdapter;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 1444
    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1445
    new-instance v5, Lcom/argusoft/sewa/android/app/component/MyDynamicComponents$12;

    invoke-direct {v5, v7, v2, v1, v0}, Lcom/argusoft/sewa/android/app/component/MyDynamicComponents$12;-><init>(Ljava/util/Map;Landroid/widget/Spinner;Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;Landroid/content/Context;)V

    invoke-virtual {v2, v5}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    goto :goto_4

    :cond_6
    move-object/from16 v21, v3

    move-object/from16 v16, v5

    move-object/from16 v24, v6

    move-object v3, v2

    :goto_4
    move-object v2, v3

    move-object/from16 v5, v16

    move-object/from16 v3, v21

    move-object/from16 v6, v24

    goto/16 :goto_0

    :cond_7
    move-object v3, v2

    move-object/from16 v24, v6

    move-object/from16 v23, v9

    .line 1490
    invoke-interface {v7}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_8

    move-object/from16 v1, v24

    .line 1491
    invoke-static {v0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateInstructionView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1493
    :cond_8
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v7}, Ljava/util/Map;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v2, v23

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "numberOfMemberForMotherSelection"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    :cond_9
    move-object v3, v2

    move-object v1, v6

    .line 1495
    invoke-static {v0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateInstructionView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :goto_5
    return-object v3
.end method

.method public static getNewImmunisationGivenComponent(Landroid/content/Context;Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)Landroid/widget/LinearLayout;
    .locals 26

    move-object/from16 v1, p0

    .line 1764
    const-string v2, "-"

    new-instance v3, Landroid/widget/TableLayout;

    invoke-direct {v3, v1}, Landroid/widget/TableLayout;-><init>(Landroid/content/Context;)V

    const/16 v4, 0xa

    .line 1765
    invoke-virtual {v3, v4, v4, v4, v4}, Landroid/widget/TableLayout;->setPadding(IIII)V

    .line 1766
    new-instance v0, Landroid/widget/TableLayout$LayoutParams;

    const/4 v5, -0x1

    const/4 v6, -0x2

    invoke-direct {v0, v5, v6}, Landroid/widget/TableLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v0}, Landroid/widget/TableLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1767
    new-instance v7, Landroid/widget/TableRow$LayoutParams;

    invoke-direct {v7, v5}, Landroid/widget/TableRow$LayoutParams;-><init>(I)V

    .line 1768
    new-instance v8, Landroid/widget/TableRow$LayoutParams;

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    invoke-direct {v8, v9, v6, v0}, Landroid/widget/TableRow$LayoutParams;-><init>(IIF)V

    .line 1771
    new-instance v0, Landroid/widget/TableRow;

    invoke-direct {v0, v1}, Landroid/widget/TableRow;-><init>(Landroid/content/Context;)V

    const/16 v10, 0xf

    .line 1772
    invoke-virtual {v0, v4, v10, v4, v10}, Landroid/widget/TableRow;->setPadding(IIII)V

    .line 1773
    sget v11, Lcom/argusoft/sewa/android/app/util/SewaUtil;->CURRENT_THEME:I

    sget v12, Lcom/argusoft/sewa/android/app/R$style;->techo_training_app:I

    if-ne v11, v12, :cond_0

    .line 1774
    sget v11, Lcom/argusoft/sewa/android/app/R$drawable;->table_row_selector:I

    goto :goto_0

    .line 1775
    :cond_0
    sget v11, Lcom/argusoft/sewa/android/app/R$drawable;->spinner_item_border:I

    .line 1773
    :goto_0
    invoke-virtual {v0, v11}, Landroid/widget/TableRow;->setBackgroundResource(I)V

    .line 1776
    invoke-virtual {v0, v7}, Landroid/widget/TableRow;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1778
    new-instance v11, Lcom/google/android/material/textview/MaterialTextView;

    invoke-direct {v11, v1}, Lcom/google/android/material/textview/MaterialTextView;-><init>(Landroid/content/Context;)V

    const/16 v12, 0x10

    .line 1779
    invoke-virtual {v11, v12}, Lcom/google/android/material/textview/MaterialTextView;->setGravity(I)V

    const/16 v13, 0x14

    .line 1780
    invoke-virtual {v11, v13, v4, v13, v4}, Lcom/google/android/material/textview/MaterialTextView;->setPadding(IIII)V

    .line 1781
    const-string v14, "Vaccine"

    invoke-static {v14}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Lcom/google/android/material/textview/MaterialTextView;->setText(Ljava/lang/CharSequence;)V

    .line 1782
    sget-object v14, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v11, v14}, Lcom/google/android/material/textview/MaterialTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1783
    invoke-virtual {v0, v11, v8}, Landroid/widget/TableRow;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1785
    new-instance v11, Lcom/google/android/material/textview/MaterialTextView;

    invoke-direct {v11, v1}, Lcom/google/android/material/textview/MaterialTextView;-><init>(Landroid/content/Context;)V

    .line 1786
    invoke-virtual {v11, v12}, Lcom/google/android/material/textview/MaterialTextView;->setGravity(I)V

    .line 1787
    invoke-virtual {v11, v13, v4, v13, v4}, Lcom/google/android/material/textview/MaterialTextView;->setPadding(IIII)V

    .line 1788
    const-string v13, "Status / Date"

    invoke-static {v13}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Lcom/google/android/material/textview/MaterialTextView;->setText(Ljava/lang/CharSequence;)V

    .line 1789
    sget-object v13, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v11, v13}, Lcom/google/android/material/textview/MaterialTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1790
    invoke-virtual {v0, v11, v8}, Landroid/widget/TableRow;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1792
    invoke-virtual {v3, v0, v9}, Landroid/widget/TableLayout;->addView(Landroid/view/View;I)V

    .line 1794
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 1795
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1796
    new-instance v13, Ljava/text/SimpleDateFormat;

    const-string v14, "dd/MM/yyyy"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v15

    invoke-direct {v13, v14, v15}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 1797
    sget-object v14, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-virtual/range {p1 .. p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getRelatedpropertyname()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v14, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 1799
    const-string v15, "Missed"

    const-string v5, "Due Now"

    const-string v12, ","

    if-eqz v14, :cond_6

    .line 1800
    sget-object v10, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->sewaFhsService:Lcom/argusoft/sewa/android/app/core/SewaFhsService;

    invoke-static {v14}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v17

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-interface {v10, v14}, Lcom/argusoft/sewa/android/app/core/SewaFhsService;->retrieveMemberBeanByActualId(Ljava/lang/Long;)Lcom/argusoft/sewa/android/app/model/MemberBean;

    move-result-object v10

    if-eqz v10, :cond_6

    .line 1802
    invoke-virtual {v10}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getDob()Ljava/util/Date;

    move-result-object v14

    invoke-static {v14}, Lcom/argusoft/sewa/android/app/util/UtilBean;->clearTimeFromDate(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v14

    .line 1803
    invoke-virtual/range {p1 .. p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getLoopCounter()I

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->getVaccineGivenDateMap(Ljava/lang/Integer;)Ljava/util/Map;

    move-result-object v23

    .line 1806
    invoke-virtual {v10}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getImmunisationGiven()Ljava/lang/String;

    move-result-object v17

    if-eqz v17, :cond_2

    .line 1807
    invoke-virtual {v10}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getImmunisationGiven()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 1808
    array-length v9, v4

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v9, :cond_2

    move/from16 v17, v9

    aget-object v9, v4, v6

    move-object/from16 p1, v4

    .line 1809
    const-string v4, "#"

    invoke-virtual {v9, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 1810
    array-length v9, v4

    move-object/from16 v24, v3

    const/4 v3, 0x2

    if-ne v9, v3, :cond_1

    const/4 v3, 0x0

    .line 1811
    aget-object v9, v4, v3

    move-object/from16 v25, v8

    const/16 v18, 0x1

    aget-object v8, v4, v18

    invoke-interface {v0, v9, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1812
    aget-object v8, v4, v3

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v9, "Given,"

    invoke-direct {v3, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v4, v4, v18

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v11, v8, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_1
    move-object/from16 v25, v8

    :goto_2
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v4, p1

    move/from16 v9, v17

    move-object/from16 v3, v24

    move-object/from16 v8, v25

    goto :goto_1

    :cond_2
    move-object/from16 v24, v3

    move-object/from16 v25, v8

    .line 1818
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->immunisationService:Lcom/argusoft/sewa/android/app/core/ImmunisationService;

    .line 1819
    invoke-virtual {v10}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getImmunisationGiven()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    const/4 v6, 0x0

    invoke-interface {v0, v14, v3, v4, v6}, Lcom/argusoft/sewa/android/app/core/ImmunisationService;->getDueImmunisationsForChild(Ljava/util/Date;Ljava/lang/String;Ljava/util/Date;Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 1821
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_7

    .line 1822
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1823
    sget-object v17, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->immunisationService:Lcom/argusoft/sewa/android/app/core/ImmunisationService;

    new-instance v20, Ljava/util/Date;

    invoke-direct/range {v20 .. v20}, Ljava/util/Date;-><init>()V

    const/16 v22, 0x1

    move-object/from16 v18, v14

    move-object/from16 v19, v3

    move-object/from16 v21, v23

    .line 1824
    invoke-interface/range {v17 .. v22}, Lcom/argusoft/sewa/android/app/core/ImmunisationService;->isImmunisationMissedOrNotValid(Ljava/util/Date;Ljava/lang/String;Ljava/util/Date;Ljava/util/Map;Z)Ljava/util/Map;

    move-result-object v4

    .line 1826
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .line 1827
    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    .line 1828
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    if-eqz v8, :cond_4

    .line 1830
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v9, :cond_5

    move-object v9, v15

    goto :goto_4

    :cond_5
    move-object v9, v5

    .line 1831
    :goto_4
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1830
    invoke-interface {v11, v3, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_6
    move-object/from16 v24, v3

    move-object/from16 v25, v8

    const/4 v6, 0x0

    .line 1840
    :cond_7
    invoke-interface {v11}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_f

    .line 1841
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {v11}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-direct {v0, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1842
    sget-object v8, Lcom/argusoft/sewa/android/app/util/UtilBean;->VACCINATION_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v0, v8}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1843
    new-instance v8, Ljava/util/Date;

    invoke-direct {v8}, Ljava/util/Date;-><init>()V

    .line 1845
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    const/4 v10, 0x1

    :goto_5
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1846
    new-instance v14, Landroid/widget/TableRow;

    invoke-direct {v14, v1}, Landroid/widget/TableRow;-><init>(Landroid/content/Context;)V

    .line 1847
    sget v6, Lcom/argusoft/sewa/android/app/util/SewaUtil;->CURRENT_THEME:I

    sget v3, Lcom/argusoft/sewa/android/app/R$style;->techo_training_app:I

    if-ne v6, v3, :cond_8

    .line 1848
    sget v3, Lcom/argusoft/sewa/android/app/R$drawable;->table_row_selector:I

    goto :goto_6

    .line 1849
    :cond_8
    sget v3, Lcom/argusoft/sewa/android/app/R$drawable;->spinner_item_border:I

    .line 1847
    :goto_6
    invoke-virtual {v14, v3}, Landroid/widget/TableRow;->setBackgroundResource(I)V

    .line 1850
    invoke-virtual {v14, v7}, Landroid/widget/TableRow;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1852
    new-instance v3, Lcom/google/android/material/textview/MaterialTextView;

    invoke-direct {v3, v1}, Lcom/google/android/material/textview/MaterialTextView;-><init>(Landroid/content/Context;)V

    const/16 v6, 0xa

    .line 1853
    invoke-virtual {v3, v6, v6, v6, v6}, Lcom/google/android/material/textview/MaterialTextView;->setPadding(IIII)V

    const/16 v4, 0x10

    .line 1854
    invoke-virtual {v3, v4}, Lcom/google/android/material/textview/MaterialTextView;->setGravity(I)V

    .line 1855
    invoke-static {v0}, Lcom/argusoft/sewa/android/app/constants/FullFormConstants;->getFullFormOfVaccines(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/material/textview/MaterialTextView;->setText(Ljava/lang/CharSequence;)V

    .line 1857
    new-instance v4, Lcom/google/android/material/textview/MaterialTextView;

    invoke-direct {v4, v1}, Lcom/google/android/material/textview/MaterialTextView;-><init>(Landroid/content/Context;)V

    move-object/from16 v16, v7

    const/4 v7, 0x2

    .line 1858
    invoke-virtual {v4, v6, v6, v7, v6}, Lcom/google/android/material/textview/MaterialTextView;->setPadding(IIII)V

    const/high16 v6, 0x41400000    # 12.0f

    .line 1859
    invoke-virtual {v4, v6}, Lcom/google/android/material/textview/MaterialTextView;->setTextSize(F)V

    const/16 v6, 0x10

    .line 1860
    invoke-virtual {v4, v6}, Lcom/google/android/material/textview/MaterialTextView;->setGravity(I)V

    .line 1862
    invoke-interface {v11, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_e

    .line 1863
    invoke-virtual {v0, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_e

    .line 1864
    invoke-virtual {v0, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/16 v18, 0x0

    .line 1865
    aget-object v6, v0, v18

    const/16 v18, 0x1

    .line 1866
    aget-object v0, v0, v18

    .line 1868
    const-string v7, "Given"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 1870
    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/google/android/material/textview/MaterialTextView;->setText(Ljava/lang/CharSequence;)V

    .line 1871
    sget v0, Lcom/argusoft/sewa/android/app/R$color;->hofTextColor:I

    invoke-static {v1, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {v4, v0}, Lcom/google/android/material/textview/MaterialTextView;->setTextColor(I)V

    goto :goto_9

    .line 1874
    :cond_9
    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/google/android/material/textview/MaterialTextView;->setText(Ljava/lang/CharSequence;)V

    .line 1878
    :try_start_0
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v7, :cond_a

    .line 1879
    :try_start_1
    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v7, 0x0

    :try_start_2
    aget-object v0, v0, v7

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    goto :goto_7

    :catch_0
    move-exception v0

    const/4 v7, 0x0

    goto :goto_8

    .line 1880
    :cond_a
    const-string v7, "After"

    invoke-virtual {v0, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 1881
    const-string v7, " "

    invoke-virtual {v0, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v7, 0x1

    aget-object v0, v0, v7

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    goto :goto_7

    :cond_b
    const/4 v0, 0x0

    :goto_7
    if-eqz v0, :cond_e

    .line 1885
    invoke-virtual {v8, v0}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/high16 v7, -0x1000000

    .line 1886
    invoke-virtual {v4, v7}, Lcom/google/android/material/textview/MaterialTextView;->setTextColor(I)V

    goto :goto_9

    .line 1887
    :cond_c
    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    const v0, -0xffff01

    .line 1888
    invoke-virtual {v4, v0}, Lcom/google/android/material/textview/MaterialTextView;->setTextColor(I)V

    goto :goto_9

    .line 1889
    :cond_d
    invoke-virtual {v15, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/high16 v0, -0x10000

    .line 1890
    invoke-virtual {v4, v0}, Lcom/google/android/material/textview/MaterialTextView;->setTextColor(I)V
    :try_end_2
    .catch Ljava/text/ParseException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_9

    :catch_1
    move-exception v0

    .line 1894
    :goto_8
    invoke-virtual {v0}, Ljava/text/ParseException;->printStackTrace()V

    :cond_e
    :goto_9
    move-object/from16 v6, v25

    .line 1899
    invoke-virtual {v14, v3, v6}, Landroid/widget/TableRow;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1900
    invoke-virtual {v14, v4, v6}, Landroid/widget/TableRow;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v18, v10, 0x1

    move-object/from16 v3, v24

    .line 1901
    invoke-virtual {v3, v14, v10}, Landroid/widget/TableLayout;->addView(Landroid/view/View;I)V

    move-object/from16 v25, v6

    move-object/from16 v7, v16

    move/from16 v10, v18

    const/4 v6, 0x0

    goto/16 :goto_5

    :cond_f
    move-object/from16 v3, v24

    .line 1906
    new-instance v0, Lcom/google/android/material/textview/MaterialTextView;

    invoke-direct {v0, v1}, Lcom/google/android/material/textview/MaterialTextView;-><init>(Landroid/content/Context;)V

    .line 1907
    const-string v2, "\ud83d\udfe2 Given   \ud83d\udd35 Due   \ud83d\udd34 Missed"

    invoke-virtual {v0, v2}, Lcom/google/android/material/textview/MaterialTextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v2, 0x41400000    # 12.0f

    .line 1908
    invoke-virtual {v0, v2}, Lcom/google/android/material/textview/MaterialTextView;->setTextSize(F)V

    const/high16 v2, -0x1000000

    .line 1909
    invoke-virtual {v0, v2}, Lcom/google/android/material/textview/MaterialTextView;->setTextColor(I)V

    const/16 v2, 0xa

    const/16 v4, 0xf

    .line 1910
    invoke-virtual {v0, v2, v4, v2, v2}, Lcom/google/android/material/textview/MaterialTextView;->setPadding(IIII)V

    const v4, 0x800003

    .line 1911
    invoke-virtual {v0, v4}, Lcom/google/android/material/textview/MaterialTextView;->setGravity(I)V

    .line 1913
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x1

    const/4 v6, -0x2

    invoke-direct {v4, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v6, 0x1

    invoke-static {v1, v5, v6, v4}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getLinearLayout(Landroid/content/Context;IILandroid/widget/LinearLayout$LayoutParams;)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 1915
    invoke-virtual {v1, v2, v2, v2, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 1916
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1917
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-object v1
.end method

.method public static getORDTComponent(Landroid/content/Context;Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)Landroid/widget/LinearLayout;
    .locals 6

    .line 3019
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    const/4 v2, -0x1

    invoke-direct {v0, v2, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v1, 0x1

    invoke-static {p0, v2, v1, v0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getLinearLayout(Landroid/content/Context;IILandroid/widget/LinearLayout$LayoutParams;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 3021
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v3, 0x190

    invoke-direct {v2, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0x64

    const/16 v4, 0x14

    const/4 v5, 0x0

    .line 3022
    invoke-virtual {v2, v5, v3, v5, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    const/16 v3, 0x11

    .line 3023
    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 3024
    sget v3, Lcom/argusoft/sewa/android/app/R$drawable;->camera:I

    invoke-static {p0, v1, v3, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getImageView(Landroid/content/Context;IILandroid/widget/LinearLayout$LayoutParams;)Landroid/widget/ImageView;

    move-result-object v1

    .line 3026
    new-instance v2, Lcom/argusoft/sewa/android/app/component/listeners/ORDTTestStartListner;

    move-object v3, p0

    check-cast v3, Landroid/app/Activity;

    invoke-direct {v2, v3, p1, v1}, Lcom/argusoft/sewa/android/app/component/listeners/ORDTTestStartListner;-><init>(Landroid/app/Activity;Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;Landroid/widget/ImageView;)V

    .line 3027
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3028
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 3030
    const-string p1, "Please click here to start the test"

    invoke-static {p0, p1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object p1

    const/4 v1, 0x4

    .line 3031
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextAlignment(I)V

    .line 3032
    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 3034
    new-instance p1, Landroid/view/View;

    invoke-direct {p1, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/16 p0, 0x2719

    .line 3035
    invoke-virtual {p1, p0}, Landroid/view/View;->setId(I)V

    const/16 p0, 0x8

    .line 3036
    invoke-virtual {p1, p0}, Landroid/view/View;->setVisibility(I)V

    .line 3037
    new-instance p0, Lcom/argusoft/sewa/android/app/component/MyDynamicComponents$18;

    invoke-direct {p0, v2}, Lcom/argusoft/sewa/android/app/component/MyDynamicComponents$18;-><init>(Lcom/argusoft/sewa/android/app/component/listeners/ORDTTestStartListner;)V

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3043
    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-object v0
.end method

.method public static getOTPBasedVerificationComponent(Landroid/content/Context;Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)Landroid/widget/LinearLayout;
    .locals 3

    .line 2617
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/argusoft/sewa/android/app/R$layout;->otp_verification_layout:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 2618
    new-instance v1, Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener;

    invoke-direct {v1, p0, v0, p1}, Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener;-><init>(Landroid/content/Context;Landroid/widget/LinearLayout;Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0
.end method

.method public static getOralScreeningComponent(Landroid/content/Context;Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)Landroid/widget/LinearLayout;
    .locals 8

    .line 868
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 869
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0x2711

    const/4 v3, 0x1

    .line 870
    invoke-static {p0, v2, v3, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getLinearLayout(Landroid/content/Context;IILandroid/widget/LinearLayout$LayoutParams;)Landroid/widget/LinearLayout;

    move-result-object v1

    const/16 v2, 0x11

    .line 871
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 872
    const-string v4, "layout_inflater"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    .line 873
    sget v5, Lcom/argusoft/sewa/android/app/R$layout;->oral_examlayout:I

    invoke-virtual {v4, v5, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 875
    new-instance v5, Lcom/argusoft/sewa/android/app/component/MyDynamicComponents$5;

    invoke-direct {v5, v0, p1}, Lcom/argusoft/sewa/android/app/component/MyDynamicComponents$5;-><init>(Ljava/util/Set;Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)V

    :goto_0
    if-ge v3, v2, :cond_0

    .line 890
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v6, "oral_chkBox"

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v6, "id"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v0, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v4, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    .line 891
    invoke-virtual {p1, v5}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public static getPhotoPicker(Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;Landroid/content/Context;I)Landroid/widget/LinearLayout;
    .locals 7

    .line 2852
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v3, 0x1

    .line 2853
    invoke-static {p1, v1, v3, v0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getLinearLayout(Landroid/content/Context;IILandroid/widget/LinearLayout$LayoutParams;)Landroid/widget/LinearLayout;

    move-result-object v4

    const/16 v5, 0x11

    .line 2854
    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setGravity(I)V

    if-eq p2, v1, :cond_0

    .line 2856
    invoke-virtual {v4, p2}, Landroid/widget/LinearLayout;->setId(I)V

    .line 2859
    :cond_0
    new-instance p2, Lcom/argusoft/sewa/android/app/component/MyDynamicComponents$16;

    invoke-direct {p2, p0}, Lcom/argusoft/sewa/android/app/component/MyDynamicComponents$16;-><init>(Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)V

    move-object v5, p1

    check-cast v5, Landroid/app/Activity;

    .line 2885
    invoke-static {p0}, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->getLoopId(Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)I

    move-result v6

    invoke-virtual {p2, v5, v6}, Lcom/argusoft/sewa/android/app/component/MyDynamicComponents$16;->setActivity(Landroid/app/Activity;I)Landroid/view/View$OnClickListener;

    move-result-object p2

    .line 2887
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getLength()I

    move-result v5

    const/4 v6, 0x0

    if-gt v5, v3, :cond_1

    .line 2888
    sget p0, Lcom/argusoft/sewa/android/app/R$drawable;->camera:I

    invoke-static {p1, v3, p0, v6}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getImageView(Landroid/content/Context;IILandroid/widget/LinearLayout$LayoutParams;)Landroid/widget/ImageView;

    move-result-object p0

    .line 2889
    invoke-virtual {v4, p0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2890
    invoke-virtual {p0, p2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2891
    sget p0, Lcom/argusoft/sewa/android/app/R$drawable;->no_image_available:I

    new-instance p2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p2, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0x3cc3

    invoke-static {p1, v1, p0, p2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getImageView(Landroid/content/Context;IILandroid/widget/LinearLayout$LayoutParams;)Landroid/widget/ImageView;

    move-result-object p0

    const/16 p1, 0x8

    .line 2894
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2895
    invoke-virtual {p0, v3}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    .line 2896
    invoke-virtual {v4, p0, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 2898
    :cond_1
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v0, Lcom/argusoft/sewa/android/app/R$layout;->layout_recycler_view_grid_layout:I

    invoke-virtual {p1, v0, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 2899
    sget v0, Lcom/argusoft/sewa/android/app/R$id;->recyclerView:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    .line 2900
    new-instance v1, Lcom/argusoft/sewa/android/app/component/ImageGridLayoutAdapter;

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getLength()I

    move-result p0

    invoke-direct {v1, p0, p2}, Lcom/argusoft/sewa/android/app/component/ImageGridLayoutAdapter;-><init>(ILandroid/view/View$OnClickListener;)V

    .line 2901
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 2902
    invoke-virtual {v4, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :goto_0
    return-object v4
.end method

.method public static getPhotoPickerNew(Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;Landroid/content/Context;I)Landroid/widget/LinearLayout;
    .locals 3

    .line 2697
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/argusoft/sewa/android/app/R$layout;->photo_picker_layout:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const/4 v1, -0x1

    if-eq p2, v1, :cond_0

    .line 2699
    invoke-virtual {v0, p2}, Landroid/widget/LinearLayout;->setId(I)V

    .line 2702
    :cond_0
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getDatamap()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getDatamap()Ljava/lang/String;

    move-result-object p2

    const-string v1, "allowCameraOnly"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    .line 2704
    :goto_0
    sget v1, Lcom/argusoft/sewa/android/app/R$id;->camera_button:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 2705
    const-string v2, "Open Camera"

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 2706
    new-instance v2, Lcom/argusoft/sewa/android/app/component/MyDynamicComponents$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0, p1}, Lcom/argusoft/sewa/android/app/component/MyDynamicComponents$$ExternalSyntheticLambda4;-><init>(Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-nez p2, :cond_2

    .line 2715
    sget p2, Lcom/argusoft/sewa/android/app/R$id;->gallery_button:I

    invoke-virtual {v0, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    .line 2716
    const-string v1, "Upload from Gallery"

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 2717
    new-instance v1, Lcom/argusoft/sewa/android/app/component/MyDynamicComponents$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, p1}, Lcom/argusoft/sewa/android/app/component/MyDynamicComponents$$ExternalSyntheticLambda5;-><init>(Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;Landroid/content/Context;)V

    invoke-virtual {p2, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 2724
    :cond_2
    sget p0, Lcom/argusoft/sewa/android/app/R$id;->gallery_button:I

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    return-object v0
.end method

.method public static getQRScannerView(Landroid/content/Context;Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;I)Landroid/view/View;
    .locals 4

    .line 630
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v2, 0x1

    .line 632
    invoke-static {p0, v1, v2, v0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getLinearLayout(Landroid/content/Context;IILandroid/widget/LinearLayout$LayoutParams;)Landroid/widget/LinearLayout;

    move-result-object v3

    if-eq p2, v1, :cond_0

    .line 634
    invoke-virtual {v3, p2}, Landroid/widget/LinearLayout;->setId(I)V

    .line 637
    :cond_0
    sget p2, Lcom/argusoft/sewa/android/app/R$drawable;->qr_scan:I

    const/4 v1, 0x0

    invoke-static {p0, v2, p2, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getImageView(Landroid/content/Context;IILandroid/widget/LinearLayout$LayoutParams;)Landroid/widget/ImageView;

    move-result-object p2

    .line 638
    invoke-virtual {v3, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 640
    const-string v1, " "

    invoke-static {p0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    const/16 v2, 0x411a

    .line 641
    invoke-virtual {v1, v2}, Lcom/google/android/material/textview/MaterialTextView;->setId(I)V

    const/16 v2, 0x8

    .line 642
    invoke-virtual {v1, v2}, Lcom/google/android/material/textview/MaterialTextView;->setVisibility(I)V

    .line 643
    invoke-virtual {v3, v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 645
    new-instance v0, Lcom/argusoft/sewa/android/app/component/MyDynamicComponents$4;

    invoke-direct {v0}, Lcom/argusoft/sewa/android/app/component/MyDynamicComponents$4;-><init>()V

    check-cast p0, Landroid/app/Activity;

    .line 670
    invoke-static {p1}, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->getLoopId(Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)I

    move-result p1

    .line 669
    invoke-virtual {v0, p0, p1}, Lcom/argusoft/sewa/android/app/component/MyDynamicComponents$4;->setActivity(Landroid/app/Activity;I)Landroid/view/View$OnClickListener;

    move-result-object p0

    .line 645
    invoke-virtual {p2, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v3
.end method

.method public static getRadioButtonDate(Landroid/content/Context;Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;
    .locals 12

    const/4 v0, 0x0

    .line 2909
    invoke-static {p1, v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getOptionsOrDataMap(Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;Z)Ljava/util/List;

    move-result-object v0

    .line 2910
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 2911
    new-instance v1, Lcom/argusoft/sewa/android/app/component/listeners/RadioButtonDateListener;

    invoke-direct {v1, p0, p1}, Lcom/argusoft/sewa/android/app/component/listeners/RadioButtonDateListener;-><init>(Landroid/content/Context;Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)V

    .line 2913
    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getListOfOptions(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    .line 2914
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v0, -0x1

    const/4 v8, -0x2

    invoke-direct {p1, v0, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v9, 0x1

    invoke-static {p0, v0, v9, p1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getLinearLayout(Landroid/content/Context;IILandroid/widget/LinearLayout$LayoutParams;)Landroid/widget/LinearLayout;

    move-result-object p1

    .line 2916
    const-string v10, "null"

    const/4 v11, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2917
    invoke-static {p2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {v11, v11, p0, p2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_0
    const/4 v6, -0x1

    const/4 v7, 0x1

    const/4 v5, -0x1

    move-object v2, p0

    move-object v3, v1

    .line 2919
    invoke-static/range {v2 .. v7}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getRadioGroup(Landroid/content/Context;Landroid/widget/RadioGroup$OnCheckedChangeListener;Ljava/util/List;III)Landroid/widget/RadioGroup;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2921
    new-instance p2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p2, v0, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0x97

    invoke-static {p0, v0, v9, p2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getLinearLayout(Landroid/content/Context;IILandroid/widget/LinearLayout$LayoutParams;)Landroid/widget/LinearLayout;

    move-result-object p2

    if-eqz p3, :cond_1

    .line 2922
    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2923
    invoke-static {p3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-static {v11, v11, p0, p3}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_1
    const/16 p3, 0x868

    .line 2925
    invoke-static {p0, v1, p3}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getCustomDatePickerForStatic(Landroid/content/Context;Landroid/view/View$OnClickListener;I)Landroid/widget/LinearLayout;

    move-result-object p0

    .line 2926
    invoke-virtual {p2, p0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const/16 p0, 0x8

    .line 2928
    invoke-virtual {p2, p0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2929
    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-object p1

    .line 2932
    :cond_2
    const-string p1, "No options found"

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object p0

    return-object p0
.end method

.method public static getRadioGroup(Landroid/content/Context;Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;IZ)Landroid/widget/RadioGroup;
    .locals 10

    .line 161
    new-instance v0, Landroid/widget/RadioGroup;

    invoke-direct {v0, p0}, Landroid/widget/RadioGroup;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    const/16 v2, 0x32

    .line 162
    invoke-virtual {v0, v1, v1, v1, v2}, Landroid/widget/RadioGroup;->setPadding(IIII)V

    if-eqz p3, :cond_0

    .line 165
    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setOrientation(I)V

    .line 169
    :cond_0
    invoke-static {p1, v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getOptionsOrDataMap(Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;Z)Ljava/util/List;

    move-result-object p3

    .line 173
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getRelatedpropertyname()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getRelatedpropertyname()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_2

    .line 174
    :cond_1
    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/argusoft/sewa/android/app/databean/OptionDataBean;

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/OptionDataBean;->getRelatedProperty()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setRelatedpropertyname(Ljava/lang/String;)V

    .line 178
    :cond_2
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getIshidden()Ljava/lang/String;

    move-result-object v3

    const-string v4, "F"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 180
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getRelatedpropertyname()Ljava/lang/String;

    move-result-object v3

    const-string v4, "null"

    if-eqz v3, :cond_3

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getRelatedpropertyname()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_3

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getRelatedpropertyname()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 181
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getRelatedpropertyname()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    .line 183
    :goto_0
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getFormulas()Ljava/util/List;

    move-result-object v5

    const/4 v6, -0x1

    const/4 v7, 0x1

    if-eqz v5, :cond_7

    .line 184
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_7

    .line 185
    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/argusoft/sewa/android/app/databean/FormulaTagBean;

    invoke-virtual {v5}, Lcom/argusoft/sewa/android/app/databean/FormulaTagBean;->getFormulavalue()Ljava/lang/String;

    move-result-object v5

    .line 186
    const-string v8, "-"

    invoke-static {v5, v8}, Lcom/argusoft/sewa/android/app/util/UtilBean;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 187
    invoke-static {v5}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    const-string v9, "setdefaultproperty"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_7

    if-eqz v3, :cond_4

    .line 188
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 189
    :cond_4
    aget-object v3, v5, v7

    .line 192
    :cond_5
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getLoopCounter()I

    move-result v5

    if-lez v5, :cond_6

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->isIgnoreLoop()Z

    move-result v5

    if-nez v5, :cond_6

    .line 193
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getLoopCounter()I

    move-result v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 195
    :cond_6
    sget-object v5, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 197
    new-instance v5, Lcom/argusoft/sewa/android/app/databean/OptionDataBean;

    invoke-direct {v5}, Lcom/argusoft/sewa/android/app/databean/OptionDataBean;-><init>()V

    if-eqz v3, :cond_7

    .line 198
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_7

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 199
    invoke-virtual {v5, v3}, Lcom/argusoft/sewa/android/app/databean/OptionDataBean;->setKey(Ljava/lang/String;)V

    .line 200
    invoke-interface {p3, v5}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    goto :goto_1

    :cond_7
    const/4 v3, -0x1

    .line 205
    :goto_1
    new-instance v4, Lcom/argusoft/sewa/android/app/component/listeners/RadioButtonCheckedListener;

    invoke-direct {v4, p1, p3}, Lcom/argusoft/sewa/android/app/component/listeners/RadioButtonCheckedListener;-><init>(Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;Ljava/util/List;)V

    invoke-virtual {v0, v4}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    if-lez p2, :cond_8

    .line 209
    invoke-virtual {v0, p2}, Landroid/widget/RadioGroup;->setId(I)V

    .line 211
    :cond_8
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_a

    .line 212
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 p2, 0x0

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/argusoft/sewa/android/app/databean/OptionDataBean;

    .line 213
    invoke-virtual {p3}, Lcom/argusoft/sewa/android/app/databean/OptionDataBean;->getValue()Ljava/lang/String;

    move-result-object p3

    add-int/lit8 v4, p2, 0x1

    invoke-static {p0, p3, p2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getRadioButton(Landroid/content/Context;Ljava/lang/String;I)Lcom/google/android/material/radiobutton/MaterialRadioButton;

    move-result-object p2

    .line 214
    invoke-virtual {p2, v1, v1, v2, v1}, Lcom/google/android/material/radiobutton/MaterialRadioButton;->setPadding(IIII)V

    .line 215
    invoke-virtual {v0, p2}, Landroid/widget/RadioGroup;->addView(Landroid/view/View;)V

    move p2, v4

    goto :goto_2

    :cond_9
    if-eq v3, v6, :cond_a

    .line 218
    invoke-virtual {v0, v3}, Landroid/widget/RadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/google/android/material/radiobutton/MaterialRadioButton;

    invoke-virtual {p0, v7}, Lcom/google/android/material/radiobutton/MaterialRadioButton;->setChecked(Z)V

    :cond_a
    return-object v0
.end method

.method public static getRegionComponent(Landroid/content/Context;Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)Landroid/widget/LinearLayout;
    .locals 1

    .line 2267
    new-instance v0, Lcom/argusoft/sewa/android/app/component/listeners/RegionListListener;

    invoke-direct {v0, p0, p1}, Lcom/argusoft/sewa/android/app/component/listeners/RegionListListener;-><init>(Landroid/content/Context;Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)V

    .line 2269
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/component/listeners/RegionListListener;->addHierarchyLayoutForSchool()Landroid/widget/LinearLayout;

    move-result-object p0

    return-object p0
.end method

.method public static getSchoolComponent(Landroid/content/Context;Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)Landroid/widget/LinearLayout;
    .locals 5

    .line 2206
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0x2714

    const/4 v2, 0x1

    invoke-static {p0, v1, v2, v0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getLinearLayout(Landroid/content/Context;IILandroid/widget/LinearLayout$LayoutParams;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 2210
    new-instance v1, Landroid/widget/RadioGroup;

    invoke-direct {v1, p0}, Landroid/widget/RadioGroup;-><init>(Landroid/content/Context;)V

    .line 2211
    const-string v2, "Search by name"

    .line 2212
    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x2716

    .line 2211
    invoke-static {p0, v2, v3}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getRadioButton(Landroid/content/Context;Ljava/lang/String;I)Lcom/google/android/material/radiobutton/MaterialRadioButton;

    move-result-object v2

    .line 2213
    invoke-virtual {v1, v2}, Landroid/widget/RadioGroup;->addView(Landroid/view/View;)V

    .line 2214
    const-string v2, "Search by hierarchy"

    .line 2215
    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x2717

    .line 2214
    invoke-static {p0, v2, v3}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getRadioButton(Landroid/content/Context;Ljava/lang/String;I)Lcom/google/android/material/radiobutton/MaterialRadioButton;

    move-result-object v2

    .line 2216
    invoke-virtual {v1, v2}, Landroid/widget/RadioGroup;->addView(Landroid/view/View;)V

    .line 2218
    new-instance v2, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;

    invoke-direct {v2, p0, p1, v0, v1}, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;-><init>(Landroid/content/Context;Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;Landroid/widget/LinearLayout;Landroid/widget/RadioGroup;)V

    .line 2220
    invoke-virtual {v1, v2}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 2223
    new-instance v3, Landroid/view/View;

    invoke-direct {v3, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/16 v4, 0x2715

    .line 2224
    invoke-virtual {v3, v4}, Landroid/view/View;->setId(I)V

    const/16 v4, 0x8

    .line 2225
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 2226
    new-instance v4, Lcom/argusoft/sewa/android/app/component/MyDynamicComponents$$ExternalSyntheticLambda0;

    invoke-direct {v4, v2, v1}, Lcom/argusoft/sewa/android/app/component/MyDynamicComponents$$ExternalSyntheticLambda0;-><init>(Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;Landroid/widget/RadioGroup;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2227
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2233
    const-string v3, "setlocationids"

    invoke-static {p1, v3}, Lcom/argusoft/sewa/android/app/component/MyDynamicComponents;->getFormulaValue(Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2238
    invoke-virtual {v2, p1}, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;->showAutoScopedSchools(Ljava/lang/String;)V

    return-object v0

    .line 2242
    :cond_0
    const-string p1, "Choose an option to search school"

    .line 2243
    invoke-static {p1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    .line 2242
    invoke-static {v2, v2, p0, p1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2244
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-object v0
.end method

.method public static getSpinner(Landroid/content/Context;Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;I)Landroid/widget/Spinner;
    .locals 11

    .line 676
    new-instance v0, Landroid/widget/Spinner;

    invoke-direct {v0, p0}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;)V

    .line 677
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getType()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 680
    const-string v4, "CBDS"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 683
    :goto_0
    invoke-static {p1, v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getOptionsOrDataMap(Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;Z)Ljava/util/List;

    move-result-object v1

    .line 687
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getRelatedpropertyname()Ljava/lang/String;

    move-result-object v4

    const-string v5, "null"

    const/4 v6, 0x0

    if-eqz v4, :cond_1

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getRelatedpropertyname()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getRelatedpropertyname()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 688
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getRelatedpropertyname()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_1
    move-object v4, v6

    .line 690
    :goto_1
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getFormulas()Ljava/util/List;

    move-result-object v7

    const/4 v8, -0x1

    if-eqz v7, :cond_8

    .line 691
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_8

    .line 692
    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/argusoft/sewa/android/app/databean/FormulaTagBean;

    invoke-virtual {v7}, Lcom/argusoft/sewa/android/app/databean/FormulaTagBean;->getFormulavalue()Ljava/lang/String;

    move-result-object v7

    .line 693
    const-string v9, "-"

    invoke-static {v7, v9}, Lcom/argusoft/sewa/android/app/util/UtilBean;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 695
    array-length v9, v7

    if-lez v9, :cond_2

    const-string v9, "identifyhighrisk"

    aget-object v10, v7, v3

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    move-object v6, v7

    .line 699
    :cond_2
    invoke-static {v7}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    const-string v10, "setdefaultproperty"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_8

    if-eqz v4, :cond_3

    .line 700
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-eqz v9, :cond_3

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 701
    :cond_3
    aget-object v4, v7, v2

    .line 703
    :cond_4
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getLoopCounter()I

    move-result v2

    if-lez v2, :cond_5

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->isIgnoreLoop()Z

    move-result v2

    if-nez v2, :cond_5

    .line 704
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getLoopCounter()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 706
    :cond_5
    new-instance v2, Lcom/argusoft/sewa/android/app/databean/OptionDataBean;

    invoke-direct {v2}, Lcom/argusoft/sewa/android/app/databean/OptionDataBean;-><init>()V

    .line 707
    sget-object v5, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v2, v5}, Lcom/argusoft/sewa/android/app/databean/OptionDataBean;->setKey(Ljava/lang/String;)V

    .line 709
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/OptionDataBean;->getKey()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_8

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/OptionDataBean;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_8

    .line 711
    sget-object v2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_7

    .line 712
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_7

    const/4 v4, 0x0

    .line 713
    :goto_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_7

    .line 714
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/argusoft/sewa/android/app/databean/OptionDataBean;

    invoke-virtual {v5}, Lcom/argusoft/sewa/android/app/databean/OptionDataBean;->getKey()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_6

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/argusoft/sewa/android/app/databean/OptionDataBean;

    invoke-virtual {v5}, Lcom/argusoft/sewa/android/app/databean/OptionDataBean;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    goto :goto_3

    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_7
    const/4 v4, -0x1

    goto :goto_3

    :cond_8
    const/4 v4, 0x0

    .line 724
    :goto_3
    new-instance v2, Lcom/argusoft/sewa/android/app/component/listeners/ComboChangeListener;

    invoke-direct {v2, p1, v6}, Lcom/argusoft/sewa/android/app/component/listeners/ComboChangeListener;-><init>(Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;[Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 726
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_9

    .line 727
    new-instance p1, Lcom/argusoft/sewa/android/app/component/MyArrayAdapter;

    sget v2, Lcom/argusoft/sewa/android/app/R$layout;->spinner_item_top:I

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getListOfOptions(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-direct {p1, p0, v2, v1}, Lcom/argusoft/sewa/android/app/component/MyArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 728
    sget p0, Lcom/argusoft/sewa/android/app/R$layout;->spinner_item_dropdown:I

    invoke-virtual {p1, p0}, Lcom/argusoft/sewa/android/app/component/MyArrayAdapter;->setDropDownViewResource(I)V

    .line 729
    invoke-virtual {v0, p1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 730
    invoke-virtual {v0, v4}, Landroid/widget/Spinner;->setSelection(I)V

    :cond_9
    if-eq p2, v8, :cond_a

    .line 733
    invoke-virtual {v0, p2}, Landroid/widget/Spinner;->setId(I)V

    .line 736
    :cond_a
    new-instance p0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 p1, -0x2

    invoke-direct {p0, v8, p1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 p1, -0x14

    const/16 p2, 0x32

    .line 737
    invoke-virtual {p0, v3, p1, v3, p2}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 739
    invoke-virtual {v0, p0}, Landroid/widget/Spinner;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public static getTemperatureBox(Landroid/content/Context;Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;I)Landroid/widget/LinearLayout;
    .locals 6

    .line 2103
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v3, 0x1

    invoke-static {p0, v1, v3, v0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getLinearLayout(Landroid/content/Context;IILandroid/widget/LinearLayout$LayoutParams;)Landroid/widget/LinearLayout;

    move-result-object v0

    if-eq p2, v1, :cond_0

    .line 2106
    invoke-virtual {v0, p2}, Landroid/widget/LinearLayout;->setId(I)V

    .line 2109
    :cond_0
    new-instance p2, Lcom/argusoft/sewa/android/app/component/listeners/TemperatureBoxListener;

    invoke-direct {p2, p1}, Lcom/argusoft/sewa/android/app/component/listeners/TemperatureBoxListener;-><init>(Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)V

    .line 2111
    const-string p1, "Thermometer not available"

    const/16 v4, 0x271d

    const/4 v5, 0x0

    invoke-static {p0, p1, v4, v5}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getCheckBox(Landroid/content/Context;Ljava/lang/String;IZ)Lcom/google/android/material/checkbox/MaterialCheckBox;

    move-result-object p1

    .line 2112
    invoke-virtual {p1, p2}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 2114
    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2116
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p1, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0x271e

    invoke-static {p0, v2, v3, p1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getLinearLayout(Landroid/content/Context;IILandroid/widget/LinearLayout$LayoutParams;)Landroid/widget/LinearLayout;

    move-result-object p1

    .line 2119
    const-string v2, "Temperature in fahrenheit"

    sget v3, Lcom/argusoft/sewa/android/app/R$style;->CustomAnswerView:I

    invoke-static {p0, v2, v1, v3, v5}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getMaterialTextView(Landroid/content/Context;Ljava/lang/String;IIZ)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2120
    sget-object v2, Lcom/argusoft/sewa/android/app/util/GlobalTypes;->TEMPERATURE_DEGREE_VALUES:Ljava/util/List;

    new-array v3, v5, [Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    const/16 v3, 0x271f

    invoke-static {p0, v2, v5, v3}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getSpinner(Landroid/content/Context;[Ljava/lang/String;II)Landroid/widget/Spinner;

    move-result-object v2

    .line 2121
    invoke-virtual {v2, p2}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 2122
    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2124
    const-string v2, "Remain floating value"

    sget v3, Lcom/argusoft/sewa/android/app/R$style;->CustomAnswerView:I

    invoke-static {p0, v2, v1, v3, v5}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getMaterialTextView(Landroid/content/Context;Ljava/lang/String;IIZ)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2125
    sget-object v1, Lcom/argusoft/sewa/android/app/util/GlobalTypes;->TEMPERATURE_FLOATING_VALUES:Ljava/util/List;

    new-array v2, v5, [Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    const/16 v2, 0x2720

    invoke-static {p0, v1, v5, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getSpinner(Landroid/content/Context;[Ljava/lang/String;II)Landroid/widget/Spinner;

    move-result-object p0

    .line 2126
    invoke-virtual {p0, p2}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 2127
    invoke-virtual {p1, p0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2129
    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-object v0
.end method

.method public static getTestSelectorComponent(Landroid/content/Context;Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)Landroid/widget/LinearLayout;
    .locals 21

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 3584
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v4, 0x1

    .line 3585
    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 3586
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x2

    const/4 v6, -0x1

    invoke-direct {v0, v6, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3591
    const-string v11, "Thalassemia Test"

    const-string v12, "Haemophilia Test"

    const-string v7, "HIV Test"

    const-string v8, "HBsAg Test"

    const-string v9, "VDRL Test"

    const-string v10, "Sickle Cell Test"

    filled-new-array/range {v7 .. v12}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    .line 3600
    const-string v11, "thalassemiaTest"

    const-string v12, "haemophiliaTest"

    const-string v7, "hivTest"

    const-string v8, "hbsagTest"

    const-string v9, "vdrlTest"

    const-string v10, "sickleCellTest"

    filled-new-array/range {v7 .. v12}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    const/4 v0, 0x6

    .line 3609
    new-array v0, v0, [[Ljava/lang/String;

    const-string v8, "--Select--"

    const-string v9, "Not done"

    const-string v10, "POSITIVE"

    const-string v11, "Negative"

    filled-new-array {v8, v9, v10, v11}, [Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    aput-object v12, v0, v13

    const-string v12, "Reactive"

    const-string v14, "Non-reactive"

    filled-new-array {v8, v9, v12, v14}, [Ljava/lang/String;

    move-result-object v12

    aput-object v12, v0, v4

    const-string v12, "Positive"

    filled-new-array {v8, v9, v12, v11}, [Ljava/lang/String;

    move-result-object v12

    const/4 v14, 0x2

    aput-object v12, v0, v14

    const-string v12, "Social Cell Trait"

    const-string v14, "Sickle Cell"

    filled-new-array {v8, v9, v11, v12, v14}, [Ljava/lang/String;

    move-result-object v12

    const/4 v14, 0x3

    aput-object v12, v0, v14

    const-string v12, "Thalassemia Major"

    const-string v14, "Thalassemia Minor"

    filled-new-array {v8, v9, v12, v14, v11}, [Ljava/lang/String;

    move-result-object v12

    const/4 v14, 0x4

    aput-object v12, v0, v14

    filled-new-array {v8, v9, v10, v11}, [Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x5

    aput-object v8, v0, v9

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    .line 3618
    const-string v18, "thalessemiaTest"

    const-string v19, "haemophiliaTest"

    const-string v14, "hivTest"

    const-string v15, "hbsagTest"

    const-string v16, "vdrlTest"

    const-string v17, "sickleCellTest"

    filled-new-array/range {v14 .. v19}, [Ljava/lang/String;

    move-result-object v9

    .line 3627
    new-instance v10, Lorg/json/JSONObject;

    invoke-direct {v10}, Lorg/json/JSONObject;-><init>()V

    .line 3629
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getAnswer()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3630
    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual/range {p1 .. p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getAnswer()Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v0, v11}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v10, v0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3633
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 3636
    :cond_0
    :goto_0
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 3637
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    const/4 v14, 0x0

    .line 3639
    :goto_1
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-ge v14, v0, :cond_4

    .line 3640
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    aget-object v15, v9, v14

    invoke-interface {v0, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 3641
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    move-object/from16 v19, v5

    move-object/from16 v20, v9

    const/16 v18, 0x1

    goto/16 :goto_4

    .line 3645
    :cond_1
    new-instance v15, Landroid/widget/LinearLayout;

    invoke-direct {v15, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 3646
    invoke-virtual {v15, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v0, 0x18

    .line 3647
    invoke-virtual {v15, v13, v13, v13, v0}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 3649
    invoke-interface {v5, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {v6, v6, v1, v0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v6

    .line 3651
    new-instance v0, Landroid/text/SpannableString;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v5, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v4, v18

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " *"

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 3652
    new-instance v4, Landroid/text/style/ForegroundColorSpan;

    const/high16 v13, -0x10000

    invoke-direct {v4, v13}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v13

    const/16 v18, 0x1

    add-int/lit8 v13, v13, -0x1

    move-object/from16 v19, v5

    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v5

    move-object/from16 v20, v9

    const/16 v9, 0x21

    invoke-virtual {v0, v4, v13, v5, v9}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 3653
    invoke-virtual {v6, v0}, Lcom/google/android/material/textview/MaterialTextView;->setText(Ljava/lang/CharSequence;)V

    .line 3655
    invoke-interface {v8, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    const/4 v4, -0x1

    const/4 v5, 0x0

    invoke-static {v1, v0, v5, v4}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getSpinner(Landroid/content/Context;[Ljava/lang/String;II)Landroid/widget/Spinner;

    move-result-object v9

    .line 3657
    invoke-interface {v11, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3658
    invoke-interface {v7, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3660
    invoke-interface {v7, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3662
    :try_start_1
    invoke-interface {v7, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3663
    invoke-interface {v8, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [Ljava/lang/String;

    const/4 v4, 0x0

    .line 3664
    :goto_2
    array-length v5, v13

    if-ge v4, v5, :cond_3

    .line 3665
    aget-object v5, v13, v4

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 3666
    invoke-virtual {v9, v4}, Landroid/widget/Spinner;->setSelection(I)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :catch_1
    move-exception v0

    .line 3671
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 3675
    :cond_3
    :goto_3
    new-instance v0, Lcom/argusoft/sewa/android/app/component/MyDynamicComponents$23;

    invoke-direct {v0, v11, v12, v2}, Lcom/argusoft/sewa/android/app/component/MyDynamicComponents$23;-><init>(Ljava/util/List;Ljava/util/List;Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)V

    invoke-virtual {v9, v0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 3685
    invoke-virtual {v15, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 3686
    invoke-virtual {v15, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 3687
    invoke-virtual {v3, v15}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :goto_4
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v5, v19

    move-object/from16 v9, v20

    const/4 v4, 0x1

    const/4 v6, -0x1

    const/4 v13, 0x0

    goto/16 :goto_1

    .line 3690
    :cond_4
    invoke-static {v11, v12, v2}, Lcom/argusoft/sewa/android/app/component/MyDynamicComponents;->validateAllTestsSelected(Ljava/util/List;Ljava/util/List;Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)V

    return-object v3
.end method

.method public static getVillageSearchComponent(Landroid/content/Context;Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)Landroid/widget/LinearLayout;
    .locals 3

    .line 2273
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    const/4 v2, -0x1

    invoke-direct {v0, v2, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v1, 0x1

    invoke-static {p0, v2, v1, v0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getLinearLayout(Landroid/content/Context;IILandroid/widget/LinearLayout$LayoutParams;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 2275
    new-instance v1, Lcom/argusoft/sewa/android/app/component/listeners/VillageSearchListener;

    invoke-direct {v1, p0, p1, v0}, Lcom/argusoft/sewa/android/app/component/listeners/VillageSearchListener;-><init>(Landroid/content/Context;Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;Landroid/widget/LinearLayout;)V

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/component/listeners/VillageSearchListener;->init()V

    return-object v0
.end method

.method public static getVisionComponent(Landroid/content/Context;Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)Landroid/widget/LinearLayout;
    .locals 19

    move-object/from16 v1, p0

    .line 1995
    invoke-static/range {p1 .. p1}, Lcom/argusoft/sewa/android/app/component/MyDynamicComponents;->relaxMandatoryIfUnder18(Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)V

    .line 1996
    new-instance v9, Landroid/widget/LinearLayout;

    invoke-direct {v9, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    .line 1997
    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v2, 0x10

    .line 1998
    invoke-virtual {v9, v2, v2, v2, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 2001
    const-string v2, "+ve"

    const-string v3, "-ve"

    const-string v4, "(+/-)"

    filled-new-array {v4, v2, v3}, [Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x53

    .line 2003
    new-array v3, v3, [Ljava/lang/String;

    .line 2004
    const-string v4, "(0.00-20.00)"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/4 v4, 0x0

    :goto_0
    const/16 v6, 0x50

    if-gt v4, v6, :cond_0

    add-int/lit8 v6, v4, 0x1

    .line 2006
    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    int-to-double v10, v4

    const-wide/high16 v12, 0x3fd0000000000000L    # 0.25

    mul-double v10, v10, v12

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    new-array v8, v0, [Ljava/lang/Object;

    aput-object v4, v8, v5

    const-string v4, "%.2f"

    invoke-static {v7, v4, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    move v4, v6

    goto :goto_0

    :cond_0
    const/16 v4, 0x52

    .line 2008
    const-string v6, "Other"

    aput-object v6, v3, v4

    const/4 v4, -0x1

    .line 2012
    invoke-static {v1, v2, v0, v4}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getSpinnerWrapped(Landroid/content/Context;[Ljava/lang/String;II)Landroid/widget/Spinner;

    move-result-object v6

    .line 2013
    invoke-static {v1, v3, v0, v4}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getSpinnerWrapped(Landroid/content/Context;[Ljava/lang/String;II)Landroid/widget/Spinner;

    move-result-object v7

    const/4 v8, 0x2

    .line 2014
    new-array v10, v8, [Landroid/view/View;

    aput-object v6, v10, v5

    aput-object v7, v10, v0

    const-string v11, "SPH"

    invoke-static {v11, v1, v10}, Lcom/argusoft/sewa/android/app/component/MyDynamicComponents;->createRow(Ljava/lang/String;Landroid/content/Context;[Landroid/view/View;)Landroid/widget/LinearLayout;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2017
    invoke-static {v1, v2, v0, v4}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getSpinnerWrapped(Landroid/content/Context;[Ljava/lang/String;II)Landroid/widget/Spinner;

    move-result-object v10

    .line 2018
    invoke-static {v1, v3, v0, v4}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getSpinnerWrapped(Landroid/content/Context;[Ljava/lang/String;II)Landroid/widget/Spinner;

    move-result-object v11

    .line 2019
    new-array v2, v8, [Landroid/view/View;

    aput-object v10, v2, v5

    aput-object v11, v2, v0

    const-string v3, "CYL"

    invoke-static {v3, v1, v2}, Lcom/argusoft/sewa/android/app/component/MyDynamicComponents;->createRow(Ljava/lang/String;Landroid/content/Context;[Landroid/view/View;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v9, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2022
    new-instance v12, Landroid/widget/EditText;

    invoke-direct {v12, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 2023
    const-string v2, "0 - 180"

    invoke-virtual {v12, v2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 2024
    const-string v2, "0"

    invoke-virtual {v12, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 2025
    invoke-virtual {v12, v8}, Landroid/widget/EditText;->setInputType(I)V

    .line 2027
    new-array v2, v0, [Landroid/text/InputFilter;

    new-instance v3, Landroid/text/InputFilter$LengthFilter;

    const/4 v13, 0x3

    invoke-direct {v3, v13}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v3, v2, v5

    invoke-virtual {v12, v2}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 2030
    new-array v2, v0, [Landroid/view/View;

    aput-object v12, v2, v5

    const-string v3, "AXIS"

    invoke-static {v3, v1, v2}, Lcom/argusoft/sewa/android/app/component/MyDynamicComponents;->createRow(Ljava/lang/String;Landroid/content/Context;[Landroid/view/View;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v9, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2035
    invoke-virtual/range {p1 .. p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getDatamap()Ljava/lang/String;

    move-result-object v2

    const-string v3, "near"

    invoke-static {v2, v3}, Lcom/argusoft/sewa/android/app/component/MyDynamicComponents;->datamapHasFlag(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    const/16 v3, 0x8

    const/4 v14, 0x7

    const/4 v15, 0x6

    const/16 v16, 0x5

    const/16 v17, 0x4

    const-string v18, "--Select--"

    if-eqz v2, :cond_1

    .line 2036
    new-array v2, v3, [Ljava/lang/String;

    aput-object v18, v2, v5

    const-string v3, "N/6"

    aput-object v3, v2, v0

    const-string v3, "N/9"

    aput-object v3, v2, v8

    const-string v3, "N/12"

    aput-object v3, v2, v13

    const-string v3, "N/18"

    aput-object v3, v2, v17

    const-string v3, "N/24"

    aput-object v3, v2, v16

    const-string v3, "N/36"

    aput-object v3, v2, v15

    const-string v3, "Less than N/36"

    aput-object v3, v2, v14

    goto :goto_1

    :cond_1
    const/16 v2, 0xb

    .line 2038
    new-array v2, v2, [Ljava/lang/String;

    aput-object v18, v2, v5

    const-string v18, "6/6"

    aput-object v18, v2, v0

    const-string v18, "6/9"

    aput-object v18, v2, v8

    const-string v8, "6/12"

    aput-object v8, v2, v13

    const-string v8, "6/18"

    aput-object v8, v2, v17

    const-string v8, "6/24"

    aput-object v8, v2, v16

    const-string v8, "6/36"

    aput-object v8, v2, v15

    const-string v8, "6/60"

    aput-object v8, v2, v14

    const-string v8, "6/60-3/60"

    aput-object v8, v2, v3

    const/16 v3, 0x9

    const-string v8, "2/60-PL"

    aput-object v8, v2, v3

    const/16 v3, 0xa

    const-string v8, "NO PL"

    aput-object v8, v2, v3

    .line 2040
    :goto_1
    invoke-static {v1, v2, v5, v4}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getSpinner(Landroid/content/Context;[Ljava/lang/String;II)Landroid/widget/Spinner;

    move-result-object v8

    .line 2041
    invoke-virtual {v8, v0}, Landroid/widget/Spinner;->setSelection(I)V

    .line 2042
    new-array v0, v0, [Landroid/view/View;

    aput-object v8, v0, v5

    const-string v2, "VISION"

    invoke-static {v2, v1, v0}, Lcom/argusoft/sewa/android/app/component/MyDynamicComponents;->createRow(Ljava/lang/String;Landroid/content/Context;[Landroid/view/View;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2045
    new-instance v0, Lcom/argusoft/sewa/android/app/component/listeners/VisionComponentListener;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v3, v6

    move-object v4, v7

    move-object v5, v10

    move-object v6, v11

    move-object v7, v12

    invoke-direct/range {v0 .. v8}, Lcom/argusoft/sewa/android/app/component/listeners/VisionComponentListener;-><init>(Landroid/content/Context;Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;Landroid/widget/Spinner;Landroid/widget/Spinner;Landroid/widget/Spinner;Landroid/widget/Spinner;Landroid/widget/EditText;Landroid/widget/Spinner;)V

    return-object v9
.end method

.method public static getWeightBox(Landroid/content/Context;Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;IZZLjava/lang/String;)Landroid/widget/LinearLayout;
    .locals 8

    .line 1924
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v3, 0x1

    invoke-static {p0, v1, v3, v0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getLinearLayout(Landroid/content/Context;IILandroid/widget/LinearLayout$LayoutParams;)Landroid/widget/LinearLayout;

    move-result-object v0

    if-eq p2, v1, :cond_0

    .line 1927
    invoke-virtual {v0, p2}, Landroid/widget/LinearLayout;->setId(I)V

    .line 1930
    :cond_0
    new-instance p2, Lcom/argusoft/sewa/android/app/component/listeners/WeightBoxChangeListener;

    invoke-direct {p2, p0, p1, p4}, Lcom/argusoft/sewa/android/app/component/listeners/WeightBoxChangeListener;-><init>(Landroid/content/Context;Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;Z)V

    const/4 v4, 0x0

    if-eqz p5, :cond_1

    .line 1931
    invoke-virtual {p5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    const/16 v5, 0x2721

    .line 1932
    invoke-static {p0, p5, v5, v4}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getCheckBox(Landroid/content/Context;Ljava/lang/String;IZ)Lcom/google/android/material/checkbox/MaterialCheckBox;

    move-result-object p5

    .line 1936
    invoke-virtual {p5, p2}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 1938
    invoke-virtual {v0, p5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1942
    :cond_1
    new-instance p5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p5, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v5, 0x2722

    invoke-static {p0, v5, v3, p5}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getLinearLayout(Landroid/content/Context;IILandroid/widget/LinearLayout$LayoutParams;)Landroid/widget/LinearLayout;

    move-result-object p5

    .line 1948
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-static {p0, v1, v4, v3}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getLinearLayout(Landroid/content/Context;IILandroid/widget/LinearLayout$LayoutParams;)Landroid/widget/LinearLayout;

    move-result-object v3

    const/high16 v5, 0x41200000    # 10.0f

    const/16 v6, 0x2723

    if-eqz p3, :cond_3

    .line 1951
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getDatamap()Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_2

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getDatamap()Ljava/lang/String;

    move-result-object p1

    const-string p3, "child"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1952
    sget-object p1, Lcom/argusoft/sewa/android/app/util/GlobalTypes;->KILO_LIST_FOR_PNC_CHILD:Ljava/util/List;

    new-array p3, v4, [Ljava/lang/String;

    invoke-interface {p1, p3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    invoke-static {p0, p1, v4, v6}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getSpinner(Landroid/content/Context;[Ljava/lang/String;II)Landroid/widget/Spinner;

    move-result-object p1

    goto :goto_0

    .line 1954
    :cond_2
    sget-object p1, Lcom/argusoft/sewa/android/app/util/GlobalTypes;->KILO_LIST:Ljava/util/List;

    new-array p3, v4, [Ljava/lang/String;

    invoke-interface {p1, p3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    invoke-static {p0, p1, v4, v6}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getSpinner(Landroid/content/Context;[Ljava/lang/String;II)Landroid/widget/Spinner;

    move-result-object p1

    .line 1956
    :goto_0
    invoke-virtual {p1, p2}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 1957
    new-instance p3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p3, v4, v2, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v3, p1, p3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 1959
    :cond_3
    const-string p1, "in kg"

    .line 1960
    invoke-static {p1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 p3, 0x3

    const/4 v7, 0x2

    .line 1959
    invoke-static {p0, p1, v6, p3, v7}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getEditText(Landroid/content/Context;Ljava/lang/String;III)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object p1

    .line 1964
    invoke-virtual {p1, p2}, Lcom/google/android/material/textfield/TextInputLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 1965
    new-instance p3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p3, v4, v2, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v3, p1, p3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1968
    :goto_1
    const-string p1, "Kgs"

    sget p3, Lcom/argusoft/sewa/android/app/R$style;->CustomAnswerView:I

    invoke-static {p0, p1, v1, p3, v4}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getMaterialTextView(Landroid/content/Context;Ljava/lang/String;IIZ)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object p1

    .line 1969
    new-instance p3, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v6, 0x40000000    # 2.0f

    invoke-direct {p3, v4, v2, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v3, p1, p3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1970
    invoke-virtual {p5, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1973
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p1, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-static {p0, v1, v4, p1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getLinearLayout(Landroid/content/Context;IILandroid/widget/LinearLayout$LayoutParams;)Landroid/widget/LinearLayout;

    move-result-object p1

    .line 1974
    sget-object p3, Lcom/argusoft/sewa/android/app/util/GlobalTypes;->GRAM_LIST:Ljava/util/List;

    new-array v3, v4, [Ljava/lang/String;

    invoke-interface {p3, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [Ljava/lang/String;

    const/16 v3, 0x2724

    invoke-static {p0, p3, v4, v3}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getSpinner(Landroid/content/Context;[Ljava/lang/String;II)Landroid/widget/Spinner;

    move-result-object p3

    .line 1975
    invoke-virtual {p3, p2}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 1976
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v4, v2, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {p1, p3, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1978
    const-string p3, "Grams"

    sget v3, Lcom/argusoft/sewa/android/app/R$style;->CustomAnswerView:I

    invoke-static {p0, p3, v1, v3, v4}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getMaterialTextView(Landroid/content/Context;Ljava/lang/String;IIZ)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object p3

    .line 1979
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v4, v2, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {p1, p3, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/16 p3, 0x32

    .line 1980
    invoke-virtual {p1, v4, v4, v4, p3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 1981
    invoke-virtual {p5, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    if-eqz p4, :cond_4

    .line 1985
    const-string p1, "Date of weight:"

    const/4 p3, 0x0

    invoke-static {p3, p3, p0, p1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object p1

    invoke-virtual {p5, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1986
    invoke-static {p0, p2, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getCustomDatePickerForStatic(Landroid/content/Context;Landroid/view/View$OnClickListener;I)Landroid/widget/LinearLayout;

    move-result-object p0

    invoke-virtual {p5, p0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1989
    :cond_4
    invoke-virtual {v0, p5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-object v0
.end method

.method static isCurrentMemberAgeBetween(II)Z
    .locals 6

    .line 2429
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v1, "dob"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2430
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 2434
    :cond_0
    :try_start_0
    new-instance v2, Lorg/joda/time/LocalDate;

    new-instance v3, Ljava/util/Date;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-direct {v2, v3}, Lorg/joda/time/LocalDate;-><init>(Ljava/lang/Object;)V

    .line 2435
    new-instance v0, Lorg/joda/time/LocalDate;

    invoke-direct {v0}, Lorg/joda/time/LocalDate;-><init>()V

    invoke-static {v2, v0}, Lorg/joda/time/Years;->yearsBetween(Lorg/joda/time/ReadablePartial;Lorg/joda/time/ReadablePartial;)Lorg/joda/time/Years;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/Years;->getYears()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    if-lt v0, p0, :cond_1

    if-gt v0, p1, :cond_1

    const/4 v1, 0x1

    :catch_0
    :cond_1
    :goto_0
    return v1
.end method

.method private static isCurrentMemberUnder18()Z
    .locals 1

    const/16 v0, 0x12

    .line 2399
    invoke-static {v0}, Lcom/argusoft/sewa/android/app/component/MyDynamicComponents;->isCurrentMemberUnderAge(I)Z

    move-result v0

    return v0
.end method

.method static isCurrentMemberUnderAge(I)Z
    .locals 6

    .line 2409
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v1, "dob"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2410
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 2414
    :cond_0
    :try_start_0
    new-instance v2, Lorg/joda/time/LocalDate;

    new-instance v3, Ljava/util/Date;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-direct {v2, v3}, Lorg/joda/time/LocalDate;-><init>(Ljava/lang/Object;)V

    .line 2415
    new-instance v0, Lorg/joda/time/LocalDate;

    invoke-direct {v0}, Lorg/joda/time/LocalDate;-><init>()V

    invoke-static {v2, v0}, Lorg/joda/time/Years;->yearsBetween(Lorg/joda/time/ReadablePartial;Lorg/joda/time/ReadablePartial;)Lorg/joda/time/Years;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/Years;->getYears()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    if-ge v0, p0, :cond_1

    const/4 v1, 0x1

    :catch_0
    :cond_1
    :goto_0
    return v1
.end method

.method private static isSimilarInfraType(Ljava/lang/String;Ljava/util/Set;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 821
    invoke-static {p0}, Lcom/argusoft/sewa/android/app/component/MyDynamicComponents;->normalizeInfraType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 822
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 825
    :cond_0
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 826
    invoke-static {v0}, Lcom/argusoft/sewa/android/app/component/MyDynamicComponents;->normalizeInfraType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 827
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    .line 830
    :cond_2
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_4

    invoke-virtual {v0, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_1

    .line 833
    :cond_3
    invoke-static {p0, v0}, Lcom/argusoft/sewa/android/app/component/MyDynamicComponents;->levenshteinDistance(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const/4 v2, 0x2

    if-gt v0, v2, :cond_1

    :cond_4
    :goto_1
    return v3

    :cond_5
    return v1
.end method

.method static synthetic lambda$getAutoCompleteTextView$4(Landroid/widget/AutoCompleteTextView;Landroid/view/View;Z)V
    .locals 0

    if-eqz p2, :cond_0

    .line 2758
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->showDropDown()V

    :cond_0
    return-void
.end method

.method static synthetic lambda$getAutoCompleteTextView$5(Landroid/widget/AutoCompleteTextView;Landroid/view/View;)V
    .locals 0

    .line 2763
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->showDropDown()V

    return-void
.end method

.method static synthetic lambda$getAutoCompleteTextView$6(Ljava/util/List;Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6

    .line 2817
    invoke-virtual {p2, p4}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 2819
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/databean/OptionDataBean;

    .line 2820
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/OptionDataBean;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2821
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/OptionDataBean;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    .line 2826
    :cond_1
    new-instance v0, Lcom/argusoft/sewa/android/app/component/listeners/ComboChangeListener;

    const/4 p0, 0x0

    invoke-direct {v0, p1, p0}, Lcom/argusoft/sewa/android/app/component/listeners/ComboChangeListener;-><init>(Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;[Ljava/lang/String;)V

    const/4 v1, 0x0

    move-object v2, p3

    move v3, p4

    move-wide v4, p5

    .line 2827
    invoke-virtual/range {v0 .. v5}, Lcom/argusoft/sewa/android/app/component/listeners/ComboChangeListener;->onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    return-void
.end method

.method static synthetic lambda$getLocationDrillDownComponent$1(Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;[Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;Lcom/argusoft/sewa/android/app/model/LocationMasterBean;Ljava/lang/String;)V
    .locals 2

    .line 2521
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CUSTOM:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2522
    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/model/LocationMasterBean;->getActualID()Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ":"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 2521
    invoke-virtual {p0, p2}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    const/4 p2, 0x0

    .line 2528
    aget-object p1, p1, p2

    invoke-static {p0, p1}, Lcom/argusoft/sewa/android/app/component/MyDynamicComponents;->exposeVillagesUnderSelectedBlock(Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;)V

    return-void
.end method

.method static synthetic lambda$getPhotoPickerNew$2(Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;Landroid/content/Context;Landroid/view/View;)V
    .locals 0

    .line 2707
    invoke-static {p0}, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->getLoopId(Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)I

    move-result p0

    sput p0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->currentQuestion:I

    .line 2708
    new-instance p0, Landroid/content/Intent;

    const-string p2, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {p0, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2709
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 2710
    check-cast p1, Landroid/app/Activity;

    const/16 p2, 0x400

    invoke-virtual {p1, p0, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_0
    return-void
.end method

.method static synthetic lambda$getPhotoPickerNew$3(Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;Landroid/content/Context;Landroid/view/View;)V
    .locals 1

    .line 2718
    invoke-static {p0}, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->getLoopId(Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)I

    move-result p0

    sput p0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->currentQuestion:I

    .line 2719
    new-instance p0, Landroid/content/Intent;

    const-string p2, "android.intent.action.PICK"

    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-direct {p0, p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2720
    const-string p2, "image/*"

    invoke-virtual {p0, p2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 2721
    check-cast p1, Landroid/app/Activity;

    const/16 p2, 0x401

    invoke-virtual {p1, p0, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method static synthetic lambda$getSchoolComponent$0(Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;Landroid/widget/RadioGroup;Landroid/view/View;)V
    .locals 0

    .line 2226
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;->resetIfStandardChanged(Landroid/widget/RadioGroup;)V

    return-void
.end method

.method private static levenshteinDistance(Ljava/lang/String;Ljava/lang/String;)I
    .locals 11

    .line 848
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    new-array v0, v0, [I

    .line 849
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v1

    new-array v2, v2, [I

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 850
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-gt v4, v5, :cond_0

    .line 851
    aput v4, v0, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x1

    .line 853
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-gt v4, v5, :cond_3

    .line 854
    aput v4, v2, v3

    const/4 v5, 0x1

    .line 855
    :goto_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-gt v5, v6, :cond_2

    add-int/lit8 v6, v4, -0x1

    .line 856
    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    add-int/lit8 v7, v5, -0x1

    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-ne v6, v8, :cond_1

    const/4 v6, 0x0

    goto :goto_3

    :cond_1
    const/4 v6, 0x1

    .line 857
    :goto_3
    aget v8, v2, v7

    add-int/2addr v8, v1

    aget v9, v0, v5

    add-int/2addr v9, v1

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    aget v7, v0, v7

    add-int/2addr v7, v6

    invoke-static {v8, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    aput v6, v2, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v4, v4, 0x1

    move-object v10, v2

    move-object v2, v0

    move-object v0, v10

    goto :goto_1

    .line 863
    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    aget p0, v0, p0

    return p0
.end method

.method private static normalizeInfraType(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 841
    const-string v0, ""

    if-nez p0, :cond_0

    return-object v0

    .line 844
    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "[^a-z0-9]"

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static reapplySkipCustomLocationAgeRange()V
    .locals 6

    .line 2589
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->mapIndexQuestion:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    .line 2590
    const-string v2, "LDD"

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 2594
    :cond_1
    :try_start_0
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getQuestionTypeView()Ljava/lang/Object;

    move-result-object v2

    .line 2595
    instance-of v3, v2, Landroid/widget/LinearLayout;

    if-nez v3, :cond_2

    goto :goto_0

    .line 2598
    :cond_2
    check-cast v2, Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    .line 2599
    :goto_1
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 2600
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 2601
    instance-of v5, v4, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;

    if-eqz v5, :cond_3

    .line 2602
    check-cast v4, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;->refreshForAgeChange()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :catch_0
    move-exception v2

    .line 2609
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Failed to refresh LDD question "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getId()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " for age change"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "MyDynamicComponents"

    invoke-static {v3, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_4
    return-void
.end method

.method private static rebuildQuestionLabelWithoutAsterisk(Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)V
    .locals 6

    .line 2373
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getQuestionView()Landroid/widget/TextView;

    move-result-object v0

    instance-of v0, v0, Lcom/google/android/material/textview/MaterialTextView;

    if-nez v0, :cond_0

    return-void

    .line 2376
    :cond_0
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getQuestionView()Landroid/widget/TextView;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textview/MaterialTextView;

    .line 2377
    invoke-virtual {v0}, Lcom/google/android/material/textview/MaterialTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, "*"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    .line 2380
    :cond_1
    invoke-virtual {v0}, Lcom/google/android/material/textview/MaterialTextView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    if-nez v1, :cond_2

    return-void

    .line 2384
    :cond_2
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v2

    if-gez v2, :cond_3

    return-void

    .line 2389
    :cond_3
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getHelpvideofield()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getHint()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/google/android/material/textview/MaterialTextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getQuestion()Ljava/lang/String;

    move-result-object v5

    .line 2388
    invoke-static {v3, v4, v0, v5}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v0

    if-nez v0, :cond_4

    return-void

    .line 2393
    :cond_4
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 2394
    invoke-virtual {v1, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 2395
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setQuestionView(Landroid/widget/TextView;)V

    return-void
.end method

.method public static relaxMandatoryIfUnder18(Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)V
    .locals 2

    .line 2326
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getDatamap()Ljava/lang/String;

    move-result-object v0

    const-string v1, "optionalIfUnder18"

    invoke-static {v0, v1}, Lcom/argusoft/sewa/android/app/component/MyDynamicComponents;->datamapHasFlag(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2329
    :cond_0
    const-string v0, "T"

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getIsmandatory()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 2333
    :cond_1
    invoke-static {}, Lcom/argusoft/sewa/android/app/component/MyDynamicComponents;->isCurrentMemberUnder18()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2334
    const-string v0, "F"

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setIsmandatory(Ljava/lang/String;)V

    .line 2335
    invoke-static {p0}, Lcom/argusoft/sewa/android/app/component/MyDynamicComponents;->stripMandatoryAsteriskFromBuiltViews(Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)V

    :cond_2
    return-void
.end method

.method public static resetORDPTestClick(Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)V
    .locals 1

    .line 3049
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getQuestionUIFrame()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3050
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getQuestionUIFrame()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/widget/LinearLayout;

    const/16 v0, 0x2719

    .line 3051
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 3053
    invoke-virtual {p0}, Landroid/view/View;->performClick()Z

    :cond_0
    return-void
.end method

.method private static setData(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/util/List;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/widget/LinearLayout;",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/OptionDataBean;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 2971
    invoke-virtual/range {p1 .. p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 2974
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, -0x2

    invoke-direct {v1, v3, v3, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 2975
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v2, v4, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v3, 0x0

    .line 2976
    invoke-static {v0, v4, v3, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getLinearLayout(Landroid/content/Context;IILandroid/widget/LinearLayout$LayoutParams;)Landroid/widget/LinearLayout;

    move-result-object v5

    .line 2982
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x1

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/argusoft/sewa/android/app/databean/OptionDataBean;

    .line 2983
    invoke-static {v0, v8, v7, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getLinearLayout(Landroid/content/Context;IILandroid/widget/LinearLayout$LayoutParams;)Landroid/widget/LinearLayout;

    move-result-object v12

    .line 2984
    invoke-virtual {v11}, Lcom/argusoft/sewa/android/app/databean/OptionDataBean;->getKey()Ljava/lang/String;

    move-result-object v13

    invoke-static {v0, v13}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getListTitleView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const/16 v13, 0x14

    .line 2985
    invoke-virtual {v12, v3, v3, v13, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 2986
    sget-object v14, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-virtual {v11}, Lcom/argusoft/sewa/android/app/databean/OptionDataBean;->getValue()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v14, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-static {v14}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getNotAvailableIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 2987
    invoke-static {v0, v14}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v15

    .line 2988
    invoke-virtual {v15, v13, v3, v3, v3}, Lcom/google/android/material/textview/MaterialTextView;->setPadding(IIII)V

    .line 2989
    invoke-virtual {v12, v15}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2991
    invoke-virtual {v5, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2993
    invoke-virtual {v11}, Lcom/argusoft/sewa/android/app/databean/OptionDataBean;->getKey()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v15

    if-le v12, v15, :cond_0

    .line 2994
    invoke-virtual {v11}, Lcom/argusoft/sewa/android/app/databean/OptionDataBean;->getKey()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    goto :goto_1

    .line 2996
    :cond_0
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v11

    :goto_1
    add-int/2addr v9, v11

    .line 3000
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v11

    if-eq v8, v11, :cond_2

    if-le v9, v13, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v10, v10, 0x1

    move v11, v10

    move v10, v9

    move-object/from16 v9, p1

    goto :goto_3

    :cond_2
    :goto_2
    int-to-float v9, v10

    .line 3001
    invoke-virtual {v5, v9}, Landroid/widget/LinearLayout;->setWeightSum(F)V

    move-object/from16 v9, p1

    .line 3002
    invoke-virtual {v9, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 3004
    invoke-static {v0, v4, v3, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getLinearLayout(Landroid/content/Context;IILandroid/widget/LinearLayout$LayoutParams;)Landroid/widget/LinearLayout;

    move-result-object v5

    const/4 v10, 0x0

    const/4 v11, 0x1

    :goto_3
    add-int/lit8 v8, v8, 0x1

    move v9, v10

    move v10, v11

    goto :goto_0

    :cond_3
    return-void
.end method

.method public static setORDTTestResult(Landroid/content/Context;Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;Ljava/util/Map;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 3059
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getQuestionUIFrame()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 3060
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getQuestionUIFrame()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    const/16 v0, 0x2718

    .line 3062
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    const/4 v2, 0x1

    const/4 v3, -0x1

    const/4 v4, 0x0

    if-nez v1, :cond_0

    .line 3064
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x2

    invoke-direct {v1, v3, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v5, 0xc8

    .line 3065
    invoke-virtual {v1, v4, v5, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 3066
    invoke-static {p0, v0, v2, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getLinearLayout(Landroid/content/Context;IILandroid/widget/LinearLayout$LayoutParams;)Landroid/widget/LinearLayout;

    move-result-object v1

    goto :goto_0

    .line 3068
    :cond_0
    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 3069
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 3072
    :goto_0
    const-string v0, "RequestId:"

    const/4 v5, 0x0

    invoke-static {v5, v5, p0, v0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 3073
    const-string v0, "requestId"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 3075
    const-string v0, "Request time:"

    invoke-static {v5, v5, p0, v0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 3076
    const-string v0, "timestamp"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 3078
    const-string v0, "Observed result:"

    invoke-static {v5, v5, p0, v0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 3079
    const-string v0, "userObservedResult"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 3080
    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 3082
    const-string v0, "capturedImageUri"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 3083
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v6, 0x190

    const/16 v7, 0x1f4

    invoke-direct {v5, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v6, 0x32

    const/16 v7, 0x14

    .line 3084
    invoke-virtual {v5, v4, v6, v4, v7}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    const/16 v4, 0x11

    .line 3085
    iput v4, v5, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 3086
    invoke-static {p0, v2, v3, v5}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getImageView(Landroid/content/Context;IILandroid/widget/LinearLayout$LayoutParams;)Landroid/widget/ImageView;

    move-result-object p0

    .line 3087
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    .line 3088
    invoke-virtual {v1, p0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_1
    const/16 p0, 0x2719

    .line 3091
    invoke-virtual {p1, p0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 3093
    invoke-virtual {p0}, Landroid/view/View;->performClick()Z

    :cond_2
    return-void
.end method

.method private static stripMandatoryAsteriskFromBuiltViews(Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)V
    .locals 1

    .line 2350
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getQuestion()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getQuestion()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2352
    invoke-static {p0}, Lcom/argusoft/sewa/android/app/component/MyDynamicComponents;->rebuildQuestionLabelWithoutAsterisk(Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)V

    return-void

    .line 2355
    :cond_0
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getSubtitle()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getSubtitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2356
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getSubTitleView()Landroid/widget/TextView;

    move-result-object v0

    instance-of v0, v0, Lcom/google/android/material/textview/MaterialTextView;

    if-eqz v0, :cond_1

    .line 2357
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getSubTitleView()Landroid/widget/TextView;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textview/MaterialTextView;

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getSubtitle()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/google/android/material/textview/MaterialTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 2358
    :cond_1
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getInstruction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getInstruction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2359
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getInstructionsView()Landroid/widget/TextView;

    move-result-object v0

    instance-of v0, v0, Lcom/google/android/material/textview/MaterialTextView;

    if-eqz v0, :cond_2

    .line 2360
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getInstructionsView()Landroid/widget/TextView;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textview/MaterialTextView;

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getInstruction()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/google/android/material/textview/MaterialTextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private static validateAllTestsSelected(Ljava/util/List;Ljava/util/List;Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/widget/Spinner;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;",
            ")V"
        }
    .end annotation

    .line 3701
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3702
    invoke-virtual {p2, v1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setMandatorymessage(Ljava/lang/String;)V

    .line 3703
    invoke-virtual {p2, v1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    return-void

    .line 3707
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    .line 3708
    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v2

    if-nez v2, :cond_1

    .line 3709
    const-string p0, "Please select result for all tests"

    invoke-virtual {p2, p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setMandatorymessage(Ljava/lang/String;)V

    .line 3710
    invoke-virtual {p2, v1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    return-void

    .line 3715
    :cond_2
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const/4 v2, 0x0

    .line 3717
    :goto_0
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 3719
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 3720
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/Spinner;

    invoke-virtual {v4}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3718
    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3723
    :cond_3
    invoke-virtual {p2, v1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setMandatorymessage(Ljava/lang/String;)V

    .line 3724
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 3726
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_1
    return-void
.end method
