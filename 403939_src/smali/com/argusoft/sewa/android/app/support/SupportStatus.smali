.class public final Lcom/argusoft/sewa/android/app/support/SupportStatus;
.super Ljava/lang/Object;
.source "SupportStatus.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/argusoft/sewa/android/app/support/SupportStatus$Group;,
        Lcom/argusoft/sewa/android/app/support/SupportStatus$Tag;
    }
.end annotation


# instance fields
.field public final color:I

.field public final detail:Ljava/lang/String;

.field public final group:Lcom/argusoft/sewa/android/app/support/SupportStatus$Group;

.field public final icon:I

.field public final ink:I

.field public final label:Ljava/lang/String;

.field public final step:I


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;IILcom/argusoft/sewa/android/app/support/SupportStatus$Group;I)V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    invoke-static {p1}, Lcom/argusoft/sewa/android/app/support/SupportLabels;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/support/SupportStatus;->label:Ljava/lang/String;

    .line 35
    invoke-static {p2}, Lcom/argusoft/sewa/android/app/support/SupportLabels;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/support/SupportStatus;->detail:Ljava/lang/String;

    .line 36
    iput p3, p0, Lcom/argusoft/sewa/android/app/support/SupportStatus;->color:I

    .line 37
    invoke-static {p3}, Lcom/argusoft/sewa/android/app/support/SupportStatus;->inkOf(I)I

    move-result p1

    iput p1, p0, Lcom/argusoft/sewa/android/app/support/SupportStatus;->ink:I

    .line 38
    iput p4, p0, Lcom/argusoft/sewa/android/app/support/SupportStatus;->icon:I

    .line 39
    iput-object p5, p0, Lcom/argusoft/sewa/android/app/support/SupportStatus;->group:Lcom/argusoft/sewa/android/app/support/SupportStatus$Group;

    .line 40
    iput p6, p0, Lcom/argusoft/sewa/android/app/support/SupportStatus;->step:I

    return-void
.end method

.method static synthetic access$000(I)I
    .locals 0

    .line 17
    invoke-static {p0}, Lcom/argusoft/sewa/android/app/support/SupportStatus;->inkOf(I)I

    move-result p0

    return p0
.end method

.method public static day(J)Ljava/lang/String;
    .locals 4

    .line 192
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 193
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 194
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 195
    invoke-static {v0, v1}, Lcom/argusoft/sewa/android/app/support/SupportStatus;->sameDay(Ljava/util/Calendar;Ljava/util/Calendar;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 196
    const-string p0, "today"

    invoke-static {p0}, Lcom/argusoft/sewa/android/app/support/SupportLabels;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v2, 0x6

    const/4 v3, -0x1

    .line 198
    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->add(II)V

    .line 199
    invoke-static {v0, v1}, Lcom/argusoft/sewa/android/app/support/SupportStatus;->sameDay(Ljava/util/Calendar;Ljava/util/Calendar;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 200
    const-string p0, "yesterday"

    invoke-static {p0}, Lcom/argusoft/sewa/android/app/support/SupportLabels;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 202
    :cond_1
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "d MMM"

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static day(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 187
    invoke-static {p0}, Lcom/argusoft/sewa/android/app/support/SupportStatus;->millis(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_0

    .line 188
    const-string p0, ""

    goto :goto_0

    :cond_0
    invoke-static {v0, v1}, Lcom/argusoft/sewa/android/app/support/SupportStatus;->day(J)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static dayAndTime(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 207
    invoke-static {p0}, Lcom/argusoft/sewa/android/app/support/SupportStatus;->millis(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_0

    .line 209
    const-string p0, ""

    return-object p0

    .line 211
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0, v1}, Lcom/argusoft/sewa/android/app/support/SupportStatus;->day(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "h:mm a"

    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v2, v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static inkOf(I)I
    .locals 1

    .line 79
    sget v0, Lcom/argusoft/sewa/android/app/R$color;->support_tone_warning:I

    if-ne p0, v0, :cond_0

    .line 80
    sget p0, Lcom/argusoft/sewa/android/app/R$color;->support_tone_warning_ink:I

    return p0

    .line 81
    :cond_0
    sget v0, Lcom/argusoft/sewa/android/app/R$color;->support_tone_success:I

    if-ne p0, v0, :cond_1

    .line 82
    sget p0, Lcom/argusoft/sewa/android/app/R$color;->support_tone_success_ink:I

    return p0

    .line 83
    :cond_1
    sget v0, Lcom/argusoft/sewa/android/app/R$color;->support_tone_error:I

    if-ne p0, v0, :cond_2

    .line 84
    sget p0, Lcom/argusoft/sewa/android/app/R$color;->support_tone_error_ink:I

    return p0

    .line 85
    :cond_2
    sget v0, Lcom/argusoft/sewa/android/app/R$color;->support_tone_default:I

    if-ne p0, v0, :cond_3

    .line 86
    sget p0, Lcom/argusoft/sewa/android/app/R$color;->support_tone_default_ink:I

    return p0

    .line 88
    :cond_3
    sget p0, Lcom/argusoft/sewa/android/app/R$color;->support_tone_info_ink:I

    return p0
.end method

.method public static millis(Ljava/lang/String;)J
    .locals 6

    const-wide/16 v0, 0x0

    if-eqz p0, :cond_3

    .line 167
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x13

    if-ge v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 171
    :try_start_0
    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 172
    const-string v3, "+0000"

    const/16 v4, 0x2b

    .line 173
    invoke-virtual {p0, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    const/16 v5, 0x2d

    invoke-virtual {p0, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    const/16 v5, 0x12

    if-le v4, v5, :cond_1

    .line 175
    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    const-string v3, ":"

    const-string v4, ""

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 177
    :cond_1
    new-instance p0, Ljava/text/SimpleDateFormat;

    const-string v4, "yyyy-MM-dd\'T\'HH:mm:ssZ"

    sget-object v5, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-direct {p0, v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 178
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0

    if-nez p0, :cond_2

    goto :goto_0

    .line 179
    :cond_2
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_3
    :goto_0
    return-wide v0
.end method

.method public static notSent()Lcom/argusoft/sewa/android/app/support/SupportStatus;
    .locals 8

    .line 45
    new-instance v7, Lcom/argusoft/sewa/android/app/support/SupportStatus;

    sget v3, Lcom/argusoft/sewa/android/app/R$color;->support_tone_warning:I

    sget v4, Lcom/argusoft/sewa/android/app/R$drawable;->ic_support_sync_arrows:I

    sget-object v5, Lcom/argusoft/sewa/android/app/support/SupportStatus$Group;->IN_PROGRESS:Lcom/argusoft/sewa/android/app/support/SupportStatus$Group;

    const/4 v6, 0x0

    const-string v1, "st_not_sent"

    const-string v2, "sub_not_sent"

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/argusoft/sewa/android/app/support/SupportStatus;-><init>(Ljava/lang/String;Ljava/lang/String;IILcom/argusoft/sewa/android/app/support/SupportStatus$Group;I)V

    return-object v7
.end method

.method public static of(Ljava/lang/String;)Lcom/argusoft/sewa/android/app/support/SupportStatus;
    .locals 17

    if-nez p0, :cond_0

    .line 51
    const-string v0, "NEW"

    goto :goto_0

    :cond_0
    move-object/from16 v0, p0

    .line 53
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, -0x1

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_1

    :sswitch_0
    const-string v1, "CLOSED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x7

    goto :goto_1

    :sswitch_1
    const-string v1, "RESOLVED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x6

    goto :goto_1

    :sswitch_2
    const-string v1, "ASSIGNED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    const/4 v2, 0x5

    goto :goto_1

    :sswitch_3
    const-string v1, "REOPENED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_1

    :cond_4
    const/4 v2, 0x4

    goto :goto_1

    :sswitch_4
    const-string v1, "AWAITING_INFORMATION"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_1

    :cond_5
    const/4 v2, 0x3

    goto :goto_1

    :sswitch_5
    const-string v1, "REJECTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_1

    :cond_6
    const/4 v2, 0x2

    goto :goto_1

    :sswitch_6
    const-string v1, "IN_PROGRESS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_1

    :cond_7
    const/4 v2, 0x1

    goto :goto_1

    :sswitch_7
    const-string v1, "CANCELLED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    goto :goto_1

    :cond_8
    const/4 v2, 0x0

    :goto_1
    packed-switch v2, :pswitch_data_0

    .line 73
    new-instance v0, Lcom/argusoft/sewa/android/app/support/SupportStatus;

    sget v6, Lcom/argusoft/sewa/android/app/R$color;->support_tone_info:I

    sget v7, Lcom/argusoft/sewa/android/app/R$drawable;->ic_support_inbox:I

    sget-object v8, Lcom/argusoft/sewa/android/app/support/SupportStatus$Group;->IN_PROGRESS:Lcom/argusoft/sewa/android/app/support/SupportStatus$Group;

    const/4 v9, 0x1

    const-string v4, "st_got_it"

    const-string v5, "sub_got_it"

    move-object v3, v0

    invoke-direct/range {v3 .. v9}, Lcom/argusoft/sewa/android/app/support/SupportStatus;-><init>(Ljava/lang/String;Ljava/lang/String;IILcom/argusoft/sewa/android/app/support/SupportStatus$Group;I)V

    return-object v0

    .line 66
    :pswitch_0
    new-instance v0, Lcom/argusoft/sewa/android/app/support/SupportStatus;

    sget v13, Lcom/argusoft/sewa/android/app/R$color;->support_tone_default:I

    sget v14, Lcom/argusoft/sewa/android/app/R$drawable;->ic_support_check:I

    sget-object v15, Lcom/argusoft/sewa/android/app/support/SupportStatus$Group;->DONE:Lcom/argusoft/sewa/android/app/support/SupportStatus$Group;

    const/16 v16, 0x3

    const-string v11, "st_fixed"

    const-string v12, "sub_fixed"

    move-object v10, v0

    invoke-direct/range {v10 .. v16}, Lcom/argusoft/sewa/android/app/support/SupportStatus;-><init>(Ljava/lang/String;Ljava/lang/String;IILcom/argusoft/sewa/android/app/support/SupportStatus$Group;I)V

    return-object v0

    .line 63
    :pswitch_1
    new-instance v0, Lcom/argusoft/sewa/android/app/support/SupportStatus;

    sget v4, Lcom/argusoft/sewa/android/app/R$color;->support_tone_success:I

    sget v5, Lcom/argusoft/sewa/android/app/R$drawable;->ic_support_check:I

    sget-object v6, Lcom/argusoft/sewa/android/app/support/SupportStatus$Group;->TO_CHECK:Lcom/argusoft/sewa/android/app/support/SupportStatus$Group;

    const/4 v7, 0x3

    const-string v2, "st_check"

    const-string v3, "sub_check"

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/argusoft/sewa/android/app/support/SupportStatus;-><init>(Ljava/lang/String;Ljava/lang/String;IILcom/argusoft/sewa/android/app/support/SupportStatus$Group;I)V

    return-object v0

    .line 60
    :pswitch_2
    new-instance v0, Lcom/argusoft/sewa/android/app/support/SupportStatus;

    sget v11, Lcom/argusoft/sewa/android/app/R$color;->support_tone_warning:I

    sget v12, Lcom/argusoft/sewa/android/app/R$drawable;->ic_support_question:I

    sget-object v13, Lcom/argusoft/sewa/android/app/support/SupportStatus$Group;->NEEDS_ANSWER:Lcom/argusoft/sewa/android/app/support/SupportStatus$Group;

    const/4 v14, 0x2

    const-string v9, "st_answer"

    const-string v10, "sub_answer"

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/argusoft/sewa/android/app/support/SupportStatus;-><init>(Ljava/lang/String;Ljava/lang/String;IILcom/argusoft/sewa/android/app/support/SupportStatus$Group;I)V

    return-object v0

    .line 57
    :pswitch_3
    new-instance v0, Lcom/argusoft/sewa/android/app/support/SupportStatus;

    sget v4, Lcom/argusoft/sewa/android/app/R$color;->support_tone_info:I

    sget v5, Lcom/argusoft/sewa/android/app/R$drawable;->ic_support_clock:I

    sget-object v6, Lcom/argusoft/sewa/android/app/support/SupportStatus$Group;->IN_PROGRESS:Lcom/argusoft/sewa/android/app/support/SupportStatus$Group;

    const/4 v7, 0x2

    const-string v2, "st_fixing"

    const-string v3, "sub_fixing"

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/argusoft/sewa/android/app/support/SupportStatus;-><init>(Ljava/lang/String;Ljava/lang/String;IILcom/argusoft/sewa/android/app/support/SupportStatus$Group;I)V

    return-object v0

    .line 70
    :pswitch_4
    new-instance v0, Lcom/argusoft/sewa/android/app/support/SupportStatus;

    sget v11, Lcom/argusoft/sewa/android/app/R$color;->support_tone_error:I

    sget v12, Lcom/argusoft/sewa/android/app/R$drawable;->ic_support_close:I

    sget-object v13, Lcom/argusoft/sewa/android/app/support/SupportStatus$Group;->DONE:Lcom/argusoft/sewa/android/app/support/SupportStatus$Group;

    const/4 v14, 0x0

    const-string v9, "st_not_taken"

    const-string v10, "sub_not_taken"

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/argusoft/sewa/android/app/support/SupportStatus;-><init>(Ljava/lang/String;Ljava/lang/String;IILcom/argusoft/sewa/android/app/support/SupportStatus$Group;I)V

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x3d7fc6cf -> :sswitch_7
        -0x2408abf9 -> :sswitch_6
        0xa61047e -> :sswitch_5
        0xa681c19 -> :sswitch_4
        0x1385145c -> :sswitch_3
        0x1899fdce -> :sswitch_2
        0x1a4dabf8 -> :sswitch_1
        0x76a8d56c -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static sameDay(Ljava/util/Calendar;Ljava/util/Calendar;)Z
    .locals 3

    const/4 v0, 0x1

    .line 215
    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x6

    invoke-virtual {p0, v1}, Ljava/util/Calendar;->get(I)I

    move-result p0

    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result p1

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static title(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 150
    const-string v0, "voice_report"

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/support/SupportLabels;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz p0, :cond_4

    .line 151
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 154
    :cond_0
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "voice note from"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-gez v1, :cond_1

    .line 156
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const/16 v2, 0x3a

    .line 158
    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-lez v2, :cond_2

    if-ge v2, v1, :cond_2

    const/4 v1, 0x0

    .line 159
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_2
    const-string p0, ""

    .line 160
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_1

    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "  \u00b7  "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_4
    :goto_1
    return-object v0
.end method


# virtual methods
.method public tag(Landroid/content/Context;)Landroid/view/View;
    .locals 3

    .line 96
    new-instance v0, Lcom/argusoft/sewa/android/app/support/SupportStatus$Tag;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/support/SupportStatus;->label:Ljava/lang/String;

    iget v2, p0, Lcom/argusoft/sewa/android/app/support/SupportStatus;->color:I

    invoke-direct {v0, v1, v2}, Lcom/argusoft/sewa/android/app/support/SupportStatus$Tag;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, p1}, Lcom/argusoft/sewa/android/app/support/SupportStatus$Tag;->view(Landroid/content/Context;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method
