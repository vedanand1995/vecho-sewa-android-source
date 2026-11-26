.class public Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;
.super Ljava/lang/Object;
.source "ListItemDataBean.java"


# instance fields
.field private active:Z

.field private boldText:Ljava/lang/String;

.field private boldText2:Ljava/lang/String;

.field private boldText3:Ljava/lang/String;

.field private bookmarkNote:Ljava/lang/String;

.field private bookmarkText:Ljava/lang/String;

.field private date:Ljava/lang/String;

.field private familyId:Ljava/lang/String;

.field private healthIdNumber:Ljava/lang/String;

.field private info:Ljava/lang/String;

.field private isAudio:Z

.field private isCrossRefBookmark:Z

.field private isHealthId:Z

.field private isHighRisk:Z

.field private isTaskOverDue:Z

.field private leadingIconResIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private leadingIconTintColor:Ljava/lang/Integer;

.field private leadingIconTintColors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field locationId:I

.field private memberId:Ljava/lang/String;

.field private memberName:Ljava/lang/String;

.field private notificationCount:Ljava/lang/String;

.field private notificationImageId:I

.field private notificationText:Ljava/lang/String;

.field private pendingAbhaCount:I

.field private position:I

.field private regularText:Ljava/lang/String;

.field private regularText2:Ljava/lang/String;

.field private regularText3:Ljava/lang/String;

.field private text:Ljava/lang/String;

.field userFullName:Ljava/lang/String;

.field userName:Ljava/lang/String;

.field private vaccines:Ljava/lang/String;

.field private vaccinesTitle:Ljava/lang/String;

.field private verified:Z

.field private visit:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    iput p1, p0, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;->notificationImageId:I

    .line 101
    iput-object p2, p0, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;->notificationText:Ljava/lang/String;

    .line 102
    iput-object p3, p0, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;->notificationCount:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;->text:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 180
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;->userName:Ljava/lang/String;

    .line 181
    iput p2, p0, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;->locationId:I

    .line 182
    iput-object p3, p0, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;->userFullName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;ZZ)V
    .locals 0

    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 172
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;->bookmarkText:Ljava/lang/String;

    .line 173
    iput p2, p0, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;->position:I

    .line 174
    iput-object p3, p0, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;->bookmarkNote:Ljava/lang/String;

    .line 175
    iput-boolean p4, p0, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;->isCrossRefBookmark:Z

    .line 176
    iput-boolean p5, p0, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;->isAudio:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .locals 0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    iput-boolean p2, p0, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;->verified:Z

    .line 68
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;->text:Ljava/lang/String;

    const/4 p1, 0x0

    .line 69
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;->boldText:Ljava/lang/String;

    .line 74
    iput-object p2, p0, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;->regularText:Ljava/lang/String;

    const/4 p1, 0x0

    .line 75
    iput-boolean p1, p0, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;->verified:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;->boldText:Ljava/lang/String;

    .line 107
    iput-object p2, p0, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;->regularText:Ljava/lang/String;

    .line 108
    iput-object p3, p0, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;->info:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;->familyId:Ljava/lang/String;

    .line 121
    iput-object p2, p0, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;->memberId:Ljava/lang/String;

    .line 122
    iput-object p3, p0, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;->memberName:Ljava/lang/String;

    .line 123
    iput-object p4, p0, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;->boldText:Ljava/lang/String;

    .line 124
    iput-object p5, p0, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;->regularText:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;->date:Ljava/lang/String;

    .line 140
    iput-object p2, p0, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;->boldText:Ljava/lang/String;

    .line 141
    iput-object p3, p0, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;->regularText:Ljava/lang/String;

    .line 142
    iput-object p4, p0, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;->boldText2:Ljava/lang/String;

    .line 143
    iput-object p5, p0, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;->regularText2:Ljava/lang/String;

    .line 144
    iput-object p6, p0, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;->boldText3:Ljava/lang/String;

    .line 145
    iput-object p7, p0, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;->regularText3:Ljava/lang/String;

    .line 146
    iput-object p9, p0, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;->vaccinesTitle:Ljava/lang/String;

    .line 147
    iput-object p8, p0, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;->visit:Ljava/lang/String;

    .line 148
    iput-object p10, p0, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;->vaccines:Ljava/lang/String;

    .line 149
    iput-boolean p11, p0, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;->isTaskOverDue:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;->date:Ljava/lang/String;

    .line 129
    iput-object p2, p0, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;->boldText:Ljava/lang/String;

    .line 130
    iput-object p3, p0, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;->regularText:Ljava/lang/String;

    .line 131
    iput-object p5, p0, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;->vaccinesTitle:Ljava/lang/String;

    .line 132
    iput-object p4, p0, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;->visit:Ljava/lang/String;

    .line 133
    iput-object p6, p0, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;->vaccines:Ljava/lang/String;

    .line 134
    iput-boolean p7, p0, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;->isTaskOverDue:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 153
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;->familyId:Ljava/lang/String;

    .line 154
    iput-object p2, p0, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;->memberId:Ljava/lang/String;

    .line 155
    iput-object p3, p0, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;->memberName:Ljava/lang/String;

    .line 156
    iput-object p4, p0, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;->boldText:Ljava/lang/String;

    .line 157
    iput-object p5, p0, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;->regularText:Ljava/lang/String;

    .line 158
    iput-boolean p6, p0, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;->verified:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V
    .locals 0

    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 162
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;->familyId:Ljava/lang/String;

    .line 163
    iput-object p2, p0, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;->memberId:Ljava/lang/String;

    .line 164
    iput-object p3, p0, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;->memberName:Ljava/lang/String;

    .line 165
    iput-object p4, p0, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;->boldText:Ljava/lang/String;

    .line 166
    iput-object p5, p0, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;->regularText:Ljava/lang/String;

    .line 167
    iput-boolean p6, p0, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;->verified:Z

    .line 168
    iput p7, p0, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;->pendingAbhaCount:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 0

    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 186
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;->familyId:Ljava/lang/String;

    .line 187
    iput-object p2, p0, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;->memberId:Ljava/lang/String;

    .line 188
    iput-object p3, p0, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;->memberName:Ljava/lang/String;

    .line 189
    iput-object p4, p0, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;->boldText:Ljava/lang/String;

    .line 190
    iput-object p5, p0, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;->regularText:Ljava/lang/String;

    .line 191
    iput-boolean p6, p0, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;->verified:Z

    .line 192
    iput-boolean p7, p0, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;->isHighRisk:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;->date:Ljava/lang/String;

    .line 113
    iput-object p2, p0, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;->boldText:Ljava/lang/String;

    .line 114
    iput-object p3, p0, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;->regularText:Ljava/lang/String;

    .line 115
    iput-object p4, p0, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;->visit:Ljava/lang/String;

    .line 116
    iput-boolean p5, p0, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;->isTaskOverDue:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;->boldText:Ljava/lang/String;

    .line 88
    iput-object p2, p0, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;->regularText:Ljava/lang/String;

    .line 89
    iput-boolean p3, p0, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;->verified:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;)V
    .locals 0

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;->memberId:Ljava/lang/String;

    .line 80
    iput-object p2, p0, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;->regularText:Ljava/lang/String;

    .line 81
    iput-boolean p3, p0, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;->verified:Z

    .line 82
    iput-boolean p4, p0, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;->isHealthId:Z

    .line 83
    iput-object p5, p0, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;->healthIdNumber:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;->boldText:Ljava/lang/String;

    .line 94
    iput-boolean p2, p0, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;->active:Z

    .line 95
    iput-object p3, p0, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;->date:Ljava/lang/String;

    .line 96
    iput-object p4, p0, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;->info:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getBoldText()Ljava/lang/String;
    .locals 1

    .line 212
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;->boldText:Ljava/lang/String;

    return-object v0
.end method

.method public getBoldText2()Ljava/lang/String;
    .locals 1

    .line 420
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;->boldText2:Ljava/lang/String;

    return-object v0
.end method

.method public getBoldText3()Ljava/lang/String;
    .locals 1

    .line 436
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;->boldText3:Ljava/lang/String;

    return-object v0
.end method

.method public getBookmarkNote()Ljava/lang/String;
    .locals 1

    .line 332
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;->bookmarkNote:Ljava/lang/String;

    return-object v0
.end method

.method public getBookmarkText()Ljava/lang/String;
    .locals 1

    .line 324
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;->bookmarkText:Ljava/lang/String;

    return-object v0
.end method

.method public getDate()Ljava/lang/String;
    .locals 1

    .line 252
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;->date:Ljava/lang/String;

    return-object v0
.end method

.method public getFamilyId()Ljava/lang/String;
    .locals 1

    .line 300
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;->familyId:Ljava/lang/String;

    return-object v0
.end method

.method public getHealthIdNumber()Ljava/lang/String;
    .locals 1

    .line 404
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;->healthIdNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getInfo()Ljava/lang/String;
    .locals 1

    .line 292
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;->info:Ljava/lang/String;

    return-object v0
.end method

.method public getLeadingIconResIds()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 444
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;->leadingIconResIds:Ljava/util/List;

    return-object v0
.end method

.method public getLeadingIconTintColor()Ljava/lang/Integer;
    .locals 1

    .line 460
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;->leadingIconTintColor:Ljava/lang/Integer;

    return-object v0
.end method

.method public getLeadingIconTintColors()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 452
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;->leadingIconTintColors:Ljava/util/List;

    return-object v0
.end method

.method public getLocationId()I
    .locals 1

    .line 380
    iget v0, p0, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;->locationId:I

    return v0
.end method

.method public getMemberId()Ljava/lang/String;
    .locals 1

    .line 308
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;->memberId:Ljava/lang/String;

    return-object v0
.end method

.method public getMemberName()Ljava/lang/String;
    .locals 1

    .line 316
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;->memberName:Ljava/lang/String;

    return-object v0
.end method

.method public getNotificationCount()Ljava/lang/String;
    .locals 1

    .line 244
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;->notificationCount:Ljava/lang/String;

    return-object v0
.end method

.method public getNotificationImageId()I
    .locals 1

    .line 228
    iget v0, p0, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;->notificationImageId:I

    return v0
.end method

.method public getNotificationText()Ljava/lang/String;
    .locals 1

    .line 236
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;->notificationText:Ljava/lang/String;

    return-object v0
.end method

.method public getPendingAbhaCount()I
    .locals 1

    .line 372
    iget v0, p0, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;->pendingAbhaCount:I

    return v0
.end method

.method public getPosition()I
    .locals 1

    .line 340
    iget v0, p0, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;->position:I

    return v0
.end method

.method public getRegularText()Ljava/lang/String;
    .locals 1

    .line 220
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;->regularText:Ljava/lang/String;

    return-object v0
.end method

.method public getRegularText2()Ljava/lang/String;
    .locals 1

    .line 428
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;->regularText2:Ljava/lang/String;

    return-object v0
.end method

.method public getRegularText3()Ljava/lang/String;
    .locals 1

    .line 468
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;->regularText3:Ljava/lang/String;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .line 196
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;->text:Ljava/lang/String;

    return-object v0
.end method

.method public getUserFullName()Ljava/lang/String;
    .locals 1

    .line 396
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;->userFullName:Ljava/lang/String;

    return-object v0
.end method

.method public getUserName()Ljava/lang/String;
    .locals 1

    .line 388
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;->userName:Ljava/lang/String;

    return-object v0
.end method

.method public getVaccines()Ljava/lang/String;
    .locals 1

    .line 268
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;->vaccines:Ljava/lang/String;

    return-object v0
.end method

.method public getVaccinesTitle()Ljava/lang/String;
    .locals 1

    .line 284
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;->vaccinesTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getVisit()Ljava/lang/String;
    .locals 1

    .line 260
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;->visit:Ljava/lang/String;

    return-object v0
.end method

.method public isActive()Z
    .locals 1

    .line 412
    iget-boolean v0, p0, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;->active:Z

    return v0
.end method

.method public isAudio()Z
    .locals 1

    .line 356
    iget-boolean v0, p0, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;->isAudio:Z

    return v0
.end method

.method public isCrossRefBookmark()Z
    .locals 1

    .line 348
    iget-boolean v0, p0, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;->isCrossRefBookmark:Z

    return v0
.end method

.method public isHealthId()Z
    .locals 1

    .line 364
    iget-boolean v0, p0, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;->isHealthId:Z

    return v0
.end method

.method public isTaskOverDue()Z
    .locals 1

    .line 276
    iget-boolean v0, p0, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;->isTaskOverDue:Z

    return v0
.end method

.method public isVerified()Z
    .locals 1

    .line 204
    iget-boolean v0, p0, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;->verified:Z

    return v0
.end method

.method public setActive(Z)V
    .locals 0

    .line 416
    iput-boolean p1, p0, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;->active:Z

    return-void
.end method

.method public setAudio(Z)V
    .locals 0

    .line 360
    iput-boolean p1, p0, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;->isAudio:Z

    return-void
.end method

.method public setBoldText(Ljava/lang/String;)V
    .locals 0

    .line 216
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;->boldText:Ljava/lang/String;

    return-void
.end method

.method public setBoldText2(Ljava/lang/String;)V
    .locals 0

    .line 424
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;->boldText2:Ljava/lang/String;

    return-void
.end method

.method public setBoldText3(Ljava/lang/String;)V
    .locals 0

    .line 440
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;->boldText3:Ljava/lang/String;

    return-void
.end method

.method public setBookmarkNote(Ljava/lang/String;)V
    .locals 0

    .line 336
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;->bookmarkNote:Ljava/lang/String;

    return-void
.end method

.method public setBookmarkText(Ljava/lang/String;)V
    .locals 0

    .line 328
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;->bookmarkText:Ljava/lang/String;

    return-void
.end method

.method public setCrossRefBookmark(Z)V
    .locals 0

    .line 352
    iput-boolean p1, p0, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;->isCrossRefBookmark:Z

    return-void
.end method

.method public setDate(Ljava/lang/String;)V
    .locals 0

    .line 256
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;->date:Ljava/lang/String;

    return-void
.end method

.method public setFamilyId(Ljava/lang/String;)V
    .locals 0

    .line 304
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;->familyId:Ljava/lang/String;

    return-void
.end method

.method public setHealthId(Z)V
    .locals 0

    .line 368
    iput-boolean p1, p0, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;->isHealthId:Z

    return-void
.end method

.method public setHealthIdNumber(Ljava/lang/String;)V
    .locals 0

    .line 408
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;->healthIdNumber:Ljava/lang/String;

    return-void
.end method

.method public setInfo(Ljava/lang/String;)V
    .locals 0

    .line 296
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;->info:Ljava/lang/String;

    return-void
.end method

.method public setLeadingIconResIds(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 448
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;->leadingIconResIds:Ljava/util/List;

    return-void
.end method

.method public setLeadingIconTintColor(Ljava/lang/Integer;)V
    .locals 0

    .line 464
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;->leadingIconTintColor:Ljava/lang/Integer;

    return-void
.end method

.method public setLeadingIconTintColors(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 456
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;->leadingIconTintColors:Ljava/util/List;

    return-void
.end method

.method public setLocationId(I)V
    .locals 0

    .line 384
    iput p1, p0, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;->locationId:I

    return-void
.end method

.method public setMemberId(Ljava/lang/String;)V
    .locals 0

    .line 312
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;->memberId:Ljava/lang/String;

    return-void
.end method

.method public setMemberName(Ljava/lang/String;)V
    .locals 0

    .line 320
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;->memberName:Ljava/lang/String;

    return-void
.end method

.method public setNotificationCount(Ljava/lang/String;)V
    .locals 0

    .line 248
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;->notificationCount:Ljava/lang/String;

    return-void
.end method

.method public setNotificationImageId(I)V
    .locals 0

    .line 232
    iput p1, p0, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;->notificationImageId:I

    return-void
.end method

.method public setNotificationText(Ljava/lang/String;)V
    .locals 0

    .line 240
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;->notificationText:Ljava/lang/String;

    return-void
.end method

.method public setPendingAbhaCount(I)V
    .locals 0

    .line 376
    iput p1, p0, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;->pendingAbhaCount:I

    return-void
.end method

.method public setPosition(I)V
    .locals 0

    .line 344
    iput p1, p0, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;->position:I

    return-void
.end method

.method public setRegularText(Ljava/lang/String;)V
    .locals 0

    .line 224
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;->regularText:Ljava/lang/String;

    return-void
.end method

.method public setRegularText2(Ljava/lang/String;)V
    .locals 0

    .line 432
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;->regularText2:Ljava/lang/String;

    return-void
.end method

.method public setRegularText3(Ljava/lang/String;)V
    .locals 0

    .line 472
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;->regularText3:Ljava/lang/String;

    return-void
.end method

.method public setTaskOverDue(Z)V
    .locals 0

    .line 280
    iput-boolean p1, p0, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;->isTaskOverDue:Z

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0

    .line 200
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;->text:Ljava/lang/String;

    return-void
.end method

.method public setUserFullName(Ljava/lang/String;)V
    .locals 0

    .line 400
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;->userFullName:Ljava/lang/String;

    return-void
.end method

.method public setUserName(Ljava/lang/String;)V
    .locals 0

    .line 392
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;->userName:Ljava/lang/String;

    return-void
.end method

.method public setVaccines(Ljava/lang/String;)V
    .locals 0

    .line 272
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;->vaccines:Ljava/lang/String;

    return-void
.end method

.method public setVaccinesTitle(Ljava/lang/String;)V
    .locals 0

    .line 288
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;->vaccinesTitle:Ljava/lang/String;

    return-void
.end method

.method public setVerified(Z)V
    .locals 0

    .line 208
    iput-boolean p1, p0, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;->verified:Z

    return-void
.end method

.method public setVisit(Ljava/lang/String;)V
    .locals 0

    .line 264
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;->visit:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 477
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ListItemDataBean{bookmarkText=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;->bookmarkText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', bookmarkNote=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;->bookmarkNote:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', position="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;->position:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isCrossRefBookmark="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;->isCrossRefBookmark:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isAudio="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;->isAudio:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
