.class public Lcom/argusoft/sewa/android/app/core/impl/NPCBServiceImpl;
.super Ljava/lang/Object;
.source "NPCBServiceImpl.java"

# interfaces
.implements Lcom/argusoft/sewa/android/app/core/NPCBService;


# instance fields
.field familyBeanDao:Lcom/j256/ormlite/dao/Dao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/Dao<",
            "Lcom/argusoft/sewa/android/app/model/FamilyBean;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field memberBeanDao:Lcom/j256/ormlite/dao/Dao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/Dao<",
            "Lcom/argusoft/sewa/android/app/model/MemberBean;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public ashaRetrievingMembersForNPCBScreening(Ljava/util/List;Ljava/lang/String;JJ)Ljava/util/List;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            "JJ)",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/MemberDataBean;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    .line 112
    const-string v2, "state"

    const-string v3, "familyId"

    const-string v4, "%"

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    const/16 v6, 0xb

    const/4 v7, 0x2

    .line 113
    invoke-virtual {v5, v7, v6}, Ljava/util/Calendar;->set(II)V

    const/4 v6, 0x5

    const/16 v8, 0x1f

    .line 114
    invoke-virtual {v5, v6, v8}, Ljava/util/Calendar;->set(II)V

    const/16 v6, -0x28

    const/4 v8, 0x1

    .line 115
    invoke-virtual {v5, v8, v6}, Ljava/util/Calendar;->add(II)V

    .line 116
    invoke-virtual {v5}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v5

    .line 118
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 121
    :try_start_0
    iget-object v9, v1, Lcom/argusoft/sewa/android/app/core/impl/NPCBServiceImpl;->familyBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v9}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v9

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v10

    .line 122
    invoke-virtual {v9, v10}, Lcom/j256/ormlite/stmt/QueryBuilder;->selectColumns([Ljava/lang/String;)Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v9

    .line 123
    invoke-virtual {v9}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v9

    const-string v10, "areaId"

    move-object/from16 v11, p1

    .line 124
    invoke-virtual {v9, v10, v11}, Lcom/j256/ormlite/stmt/Where;->in(Ljava/lang/String;Ljava/lang/Iterable;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v9

    .line 125
    invoke-virtual {v9}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    move-result-object v9

    sget-object v10, Lcom/argusoft/sewa/android/app/constants/FhsConstants;->FHS_ACTIVE_CRITERIA_FAMILY_STATES:Ljava/util/List;

    .line 126
    invoke-virtual {v9, v2, v10}, Lcom/j256/ormlite/stmt/Where;->in(Ljava/lang/String;Ljava/lang/Iterable;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v9

    .line 127
    invoke-virtual {v9}, Lcom/j256/ormlite/stmt/Where;->query()Ljava/util/List;

    move-result-object v9

    .line 129
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 130
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/argusoft/sewa/android/app/model/FamilyBean;

    .line 131
    invoke-virtual {v11}, Lcom/argusoft/sewa/android/app/model/FamilyBean;->getFamilyId()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 134
    :cond_0
    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_2

    .line 140
    iget-object v9, v1, Lcom/argusoft/sewa/android/app/core/impl/NPCBServiceImpl;->memberBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v9}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v9

    .line 141
    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v9, v11}, Lcom/j256/ormlite/stmt/QueryBuilder;->limit(Ljava/lang/Long;)Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v9

    .line 142
    invoke-static/range {p5 .. p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v9, v11}, Lcom/j256/ormlite/stmt/QueryBuilder;->offset(Ljava/lang/Long;)Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v9

    const-string v11, "(imtMemberNpcbStatus IS NULL) DESC, imtMemberNpcbStatus DESC"

    .line 143
    invoke-virtual {v9, v11}, Lcom/j256/ormlite/stmt/QueryBuilder;->orderByRaw(Ljava/lang/String;)Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v9

    .line 146
    invoke-virtual {v9}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v9
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 148
    const-string v11, "imtMemberNpcbStatus"

    const/4 v12, 0x3

    const/4 v13, 0x0

    const-string v14, "dob"

    if-eqz v0, :cond_1

    :try_start_1
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_1

    .line 152
    invoke-virtual {v9, v3, v10}, Lcom/j256/ormlite/stmt/Where;->in(Ljava/lang/String;Ljava/lang/Iterable;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v10

    sget-object v15, Lcom/argusoft/sewa/android/app/constants/FhsConstants;->FHS_INACTIVE_CRITERIA_MEMBER_STATES:Ljava/util/List;

    .line 153
    invoke-virtual {v9, v2, v15}, Lcom/j256/ormlite/stmt/Where;->notIn(Ljava/lang/String;Ljava/lang/Iterable;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v2

    const/4 v15, 0x4

    new-array v15, v15, [Lcom/j256/ormlite/stmt/Where;

    .line 154
    invoke-virtual {v9, v14}, Lcom/j256/ormlite/stmt/Where;->isNotNull(Ljava/lang/String;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v16

    aput-object v16, v15, v13

    .line 155
    invoke-virtual {v9, v14, v5}, Lcom/j256/ormlite/stmt/Where;->le(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v5

    aput-object v5, v15, v8

    .line 156
    invoke-virtual {v9, v11}, Lcom/j256/ormlite/stmt/Where;->isNull(Ljava/lang/String;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v5

    aput-object v5, v15, v7

    const-string v5, "uniqueHealthId"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 158
    invoke-virtual {v9, v5, v11}, Lcom/j256/ormlite/stmt/Where;->like(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v5

    const-string v11, "firstName"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 159
    invoke-virtual {v9, v11, v14}, Lcom/j256/ormlite/stmt/Where;->like(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v11

    new-array v7, v7, [Lcom/j256/ormlite/stmt/Where;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 160
    invoke-virtual {v9, v3, v14}, Lcom/j256/ormlite/stmt/Where;->like(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v3

    aput-object v3, v7, v13

    const-string v3, "mobileNumber"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 161
    invoke-virtual {v9, v3, v0}, Lcom/j256/ormlite/stmt/Where;->like(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    aput-object v0, v7, v8

    .line 157
    invoke-virtual {v9, v5, v11, v7}, Lcom/j256/ormlite/stmt/Where;->or(Lcom/j256/ormlite/stmt/Where;Lcom/j256/ormlite/stmt/Where;[Lcom/j256/ormlite/stmt/Where;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    aput-object v0, v15, v12

    .line 151
    invoke-virtual {v9, v10, v2, v15}, Lcom/j256/ormlite/stmt/Where;->and(Lcom/j256/ormlite/stmt/Where;Lcom/j256/ormlite/stmt/Where;[Lcom/j256/ormlite/stmt/Where;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    .line 163
    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/Where;->query()Ljava/util/List;

    move-result-object v0

    goto :goto_1

    .line 166
    :cond_1
    invoke-virtual {v9, v3, v10}, Lcom/j256/ormlite/stmt/Where;->in(Ljava/lang/String;Ljava/lang/Iterable;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    sget-object v3, Lcom/argusoft/sewa/android/app/constants/FhsConstants;->FHS_INACTIVE_CRITERIA_MEMBER_STATES:Ljava/util/List;

    .line 167
    invoke-virtual {v9, v2, v3}, Lcom/j256/ormlite/stmt/Where;->notIn(Ljava/lang/String;Ljava/lang/Iterable;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v2

    new-array v3, v12, [Lcom/j256/ormlite/stmt/Where;

    .line 168
    invoke-virtual {v9, v14}, Lcom/j256/ormlite/stmt/Where;->isNotNull(Ljava/lang/String;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v4

    aput-object v4, v3, v13

    .line 169
    invoke-virtual {v9, v14, v5}, Lcom/j256/ormlite/stmt/Where;->le(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v4

    aput-object v4, v3, v8

    .line 170
    invoke-virtual {v9, v11}, Lcom/j256/ormlite/stmt/Where;->isNull(Ljava/lang/String;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v4

    aput-object v4, v3, v7

    .line 165
    invoke-virtual {v9, v0, v2, v3}, Lcom/j256/ormlite/stmt/Where;->and(Lcom/j256/ormlite/stmt/Where;Lcom/j256/ormlite/stmt/Where;[Lcom/j256/ormlite/stmt/Where;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    .line 171
    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/Where;->query()Ljava/util/List;

    move-result-object v0

    .line 174
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/argusoft/sewa/android/app/model/MemberBean;

    .line 175
    new-instance v3, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-direct {v3, v2}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;-><init>(Lcom/argusoft/sewa/android/app/model/MemberBean;)V

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 179
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    return-object v6
.end method

.method public choRetrievingMembersForNPCBScreening(Ljava/util/List;Ljava/lang/String;JJ)Ljava/util/List;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            "JJ)",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/MemberDataBean;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    .line 187
    const-string v2, "state"

    const-string v3, "familyId"

    const-string v4, "%"

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    const/16 v6, 0xb

    const/4 v7, 0x2

    .line 188
    invoke-virtual {v5, v7, v6}, Ljava/util/Calendar;->set(II)V

    const/4 v6, 0x5

    const/16 v8, 0x1f

    .line 189
    invoke-virtual {v5, v6, v8}, Ljava/util/Calendar;->set(II)V

    const/16 v6, -0x28

    const/4 v8, 0x1

    .line 190
    invoke-virtual {v5, v8, v6}, Ljava/util/Calendar;->add(II)V

    .line 191
    invoke-virtual {v5}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v5

    .line 193
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 196
    :try_start_0
    iget-object v9, v1, Lcom/argusoft/sewa/android/app/core/impl/NPCBServiceImpl;->familyBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v9}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v9

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v10

    .line 197
    invoke-virtual {v9, v10}, Lcom/j256/ormlite/stmt/QueryBuilder;->selectColumns([Ljava/lang/String;)Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v9

    .line 198
    invoke-virtual {v9}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v9

    const-string v10, "areaId"

    move-object/from16 v11, p1

    .line 199
    invoke-virtual {v9, v10, v11}, Lcom/j256/ormlite/stmt/Where;->in(Ljava/lang/String;Ljava/lang/Iterable;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v9

    .line 200
    invoke-virtual {v9}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    move-result-object v9

    sget-object v10, Lcom/argusoft/sewa/android/app/constants/FhsConstants;->FHS_ACTIVE_CRITERIA_FAMILY_STATES:Ljava/util/List;

    .line 201
    invoke-virtual {v9, v2, v10}, Lcom/j256/ormlite/stmt/Where;->in(Ljava/lang/String;Ljava/lang/Iterable;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v9

    .line 202
    invoke-virtual {v9}, Lcom/j256/ormlite/stmt/Where;->query()Ljava/util/List;

    move-result-object v9

    .line 204
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 205
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/argusoft/sewa/android/app/model/FamilyBean;

    .line 206
    invoke-virtual {v11}, Lcom/argusoft/sewa/android/app/model/FamilyBean;->getFamilyId()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 209
    :cond_0
    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_2

    .line 215
    iget-object v9, v1, Lcom/argusoft/sewa/android/app/core/impl/NPCBServiceImpl;->memberBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v9}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v9

    .line 216
    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v9, v11}, Lcom/j256/ormlite/stmt/QueryBuilder;->limit(Ljava/lang/Long;)Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v9

    .line 217
    invoke-static/range {p5 .. p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v9, v11}, Lcom/j256/ormlite/stmt/QueryBuilder;->offset(Ljava/lang/Long;)Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v9

    const-string v11, "(imtMemberNpcbStatus IS NULL) DESC, imtMemberNpcbStatus DESC"

    .line 218
    invoke-virtual {v9, v11}, Lcom/j256/ormlite/stmt/QueryBuilder;->orderByRaw(Ljava/lang/String;)Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v9

    .line 221
    invoke-virtual {v9}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v9
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 223
    const-string v11, "imtMemberNpcbStatus"

    const/4 v12, 0x3

    const/4 v13, 0x0

    const-string v14, "dob"

    if-eqz v0, :cond_1

    :try_start_1
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_1

    .line 227
    invoke-virtual {v9, v3, v10}, Lcom/j256/ormlite/stmt/Where;->in(Ljava/lang/String;Ljava/lang/Iterable;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v10

    sget-object v15, Lcom/argusoft/sewa/android/app/constants/FhsConstants;->FHS_INACTIVE_CRITERIA_MEMBER_STATES:Ljava/util/List;

    .line 228
    invoke-virtual {v9, v2, v15}, Lcom/j256/ormlite/stmt/Where;->notIn(Ljava/lang/String;Ljava/lang/Iterable;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v2

    const/4 v15, 0x4

    new-array v15, v15, [Lcom/j256/ormlite/stmt/Where;

    .line 229
    invoke-virtual {v9, v14}, Lcom/j256/ormlite/stmt/Where;->isNotNull(Ljava/lang/String;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v16

    aput-object v16, v15, v13

    .line 230
    invoke-virtual {v9, v14, v5}, Lcom/j256/ormlite/stmt/Where;->le(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v5

    aput-object v5, v15, v8

    .line 231
    invoke-virtual {v9, v11}, Lcom/j256/ormlite/stmt/Where;->isNull(Ljava/lang/String;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v5

    aput-object v5, v15, v7

    const-string v5, "uniqueHealthId"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 237
    invoke-virtual {v9, v5, v11}, Lcom/j256/ormlite/stmt/Where;->like(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v5

    const-string v11, "firstName"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 238
    invoke-virtual {v9, v11, v14}, Lcom/j256/ormlite/stmt/Where;->like(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v11

    new-array v7, v7, [Lcom/j256/ormlite/stmt/Where;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 239
    invoke-virtual {v9, v3, v14}, Lcom/j256/ormlite/stmt/Where;->like(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v3

    aput-object v3, v7, v13

    const-string v3, "mobileNumber"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 240
    invoke-virtual {v9, v3, v0}, Lcom/j256/ormlite/stmt/Where;->like(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    aput-object v0, v7, v8

    .line 236
    invoke-virtual {v9, v5, v11, v7}, Lcom/j256/ormlite/stmt/Where;->or(Lcom/j256/ormlite/stmt/Where;Lcom/j256/ormlite/stmt/Where;[Lcom/j256/ormlite/stmt/Where;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    aput-object v0, v15, v12

    .line 226
    invoke-virtual {v9, v10, v2, v15}, Lcom/j256/ormlite/stmt/Where;->and(Lcom/j256/ormlite/stmt/Where;Lcom/j256/ormlite/stmt/Where;[Lcom/j256/ormlite/stmt/Where;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    .line 242
    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/Where;->query()Ljava/util/List;

    move-result-object v0

    goto :goto_1

    .line 245
    :cond_1
    invoke-virtual {v9, v3, v10}, Lcom/j256/ormlite/stmt/Where;->in(Ljava/lang/String;Ljava/lang/Iterable;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    sget-object v3, Lcom/argusoft/sewa/android/app/constants/FhsConstants;->FHS_INACTIVE_CRITERIA_MEMBER_STATES:Ljava/util/List;

    .line 246
    invoke-virtual {v9, v2, v3}, Lcom/j256/ormlite/stmt/Where;->notIn(Ljava/lang/String;Ljava/lang/Iterable;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v2

    new-array v3, v12, [Lcom/j256/ormlite/stmt/Where;

    .line 247
    invoke-virtual {v9, v14}, Lcom/j256/ormlite/stmt/Where;->isNotNull(Ljava/lang/String;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v4

    aput-object v4, v3, v13

    .line 248
    invoke-virtual {v9, v14, v5}, Lcom/j256/ormlite/stmt/Where;->le(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v4

    aput-object v4, v3, v8

    .line 249
    invoke-virtual {v9, v11}, Lcom/j256/ormlite/stmt/Where;->isNull(Ljava/lang/String;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v4

    aput-object v4, v3, v7

    .line 244
    invoke-virtual {v9, v0, v2, v3}, Lcom/j256/ormlite/stmt/Where;->and(Lcom/j256/ormlite/stmt/Where;Lcom/j256/ormlite/stmt/Where;[Lcom/j256/ormlite/stmt/Where;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    .line 254
    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/Where;->query()Ljava/util/List;

    move-result-object v0

    .line 257
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/argusoft/sewa/android/app/model/MemberBean;

    .line 258
    new-instance v3, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-direct {v3, v2}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;-><init>(Lcom/argusoft/sewa/android/app/model/MemberBean;)V

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 262
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    return-object v6
.end method

.method public fhwRetrieveMembersForNPCBScreening(Ljava/util/List;Ljava/lang/String;JJ)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            "JJ)",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/MemberDataBean;",
            ">;"
        }
    .end annotation

    .line 39
    const-string v0, "state"

    const-string v1, "familyId"

    const-string v2, "%"

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    const/16 v4, 0xb

    const/4 v5, 0x2

    .line 40
    invoke-virtual {v3, v5, v4}, Ljava/util/Calendar;->set(II)V

    const/4 v4, 0x5

    const/16 v6, 0x1f

    .line 41
    invoke-virtual {v3, v4, v6}, Ljava/util/Calendar;->set(II)V

    const/16 v4, -0x28

    const/4 v6, 0x1

    .line 42
    invoke-virtual {v3, v6, v4}, Ljava/util/Calendar;->add(II)V

    .line 43
    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    .line 45
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 48
    :try_start_0
    iget-object v7, p0, Lcom/argusoft/sewa/android/app/core/impl/NPCBServiceImpl;->familyBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v7}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v7

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v8

    .line 49
    invoke-virtual {v7, v8}, Lcom/j256/ormlite/stmt/QueryBuilder;->selectColumns([Ljava/lang/String;)Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v7

    .line 50
    invoke-virtual {v7}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v7

    const-string v8, "areaId"

    .line 51
    invoke-virtual {v7, v8, p1}, Lcom/j256/ormlite/stmt/Where;->in(Ljava/lang/String;Ljava/lang/Iterable;)Lcom/j256/ormlite/stmt/Where;

    move-result-object p1

    .line 52
    invoke-virtual {p1}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    move-result-object p1

    sget-object v7, Lcom/argusoft/sewa/android/app/constants/FhsConstants;->FHS_ACTIVE_CRITERIA_FAMILY_STATES:Ljava/util/List;

    .line 53
    invoke-virtual {p1, v0, v7}, Lcom/j256/ormlite/stmt/Where;->in(Ljava/lang/String;Ljava/lang/Iterable;)Lcom/j256/ormlite/stmt/Where;

    move-result-object p1

    .line 54
    invoke-virtual {p1}, Lcom/j256/ormlite/stmt/Where;->query()Ljava/util/List;

    move-result-object p1

    .line 56
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 57
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/argusoft/sewa/android/app/model/FamilyBean;

    .line 58
    invoke-virtual {v8}, Lcom/argusoft/sewa/android/app/model/FamilyBean;->getFamilyId()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 61
    :cond_0
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    .line 67
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/core/impl/NPCBServiceImpl;->memberBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {p1}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object p1

    .line 68
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/j256/ormlite/stmt/QueryBuilder;->limit(Ljava/lang/Long;)Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object p1

    .line 69
    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/j256/ormlite/stmt/QueryBuilder;->offset(Ljava/lang/Long;)Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object p1

    const-string p3, "(imtMemberNpcbStatus IS NULL) DESC, imtMemberNpcbStatus DESC"

    .line 70
    invoke-virtual {p1, p3}, Lcom/j256/ormlite/stmt/QueryBuilder;->orderByRaw(Ljava/lang/String;)Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object p1

    .line 73
    invoke-virtual {p1}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p3, 0x0

    .line 75
    const-string p4, "dob"

    if-eqz p2, :cond_1

    :try_start_1
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p5

    if-nez p5, :cond_1

    .line 79
    invoke-virtual {p1, v1, v7}, Lcom/j256/ormlite/stmt/Where;->in(Ljava/lang/String;Ljava/lang/Iterable;)Lcom/j256/ormlite/stmt/Where;

    move-result-object p5

    sget-object p6, Lcom/argusoft/sewa/android/app/constants/FhsConstants;->FHS_INACTIVE_CRITERIA_MEMBER_STATES:Ljava/util/List;

    .line 80
    invoke-virtual {p1, v0, p6}, Lcom/j256/ormlite/stmt/Where;->notIn(Ljava/lang/String;Ljava/lang/Iterable;)Lcom/j256/ormlite/stmt/Where;

    move-result-object p6

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/j256/ormlite/stmt/Where;

    .line 81
    invoke-virtual {p1, p4}, Lcom/j256/ormlite/stmt/Where;->isNotNull(Ljava/lang/String;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v7

    aput-object v7, v0, p3

    .line 82
    invoke-virtual {p1, p4, v3}, Lcom/j256/ormlite/stmt/Where;->le(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object p4

    aput-object p4, v0, v6

    const-string p4, "uniqueHealthId"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 84
    invoke-virtual {p1, p4, v3}, Lcom/j256/ormlite/stmt/Where;->like(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object p4

    const-string v3, "firstName"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 85
    invoke-virtual {p1, v3, v7}, Lcom/j256/ormlite/stmt/Where;->like(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v3

    new-array v7, v5, [Lcom/j256/ormlite/stmt/Where;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 86
    invoke-virtual {p1, v1, v8}, Lcom/j256/ormlite/stmt/Where;->like(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v1

    aput-object v1, v7, p3

    const-string p3, "mobileNumber"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 87
    invoke-virtual {p1, p3, p2}, Lcom/j256/ormlite/stmt/Where;->like(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object p2

    aput-object p2, v7, v6

    .line 83
    invoke-virtual {p1, p4, v3, v7}, Lcom/j256/ormlite/stmt/Where;->or(Lcom/j256/ormlite/stmt/Where;Lcom/j256/ormlite/stmt/Where;[Lcom/j256/ormlite/stmt/Where;)Lcom/j256/ormlite/stmt/Where;

    move-result-object p2

    aput-object p2, v0, v5

    .line 78
    invoke-virtual {p1, p5, p6, v0}, Lcom/j256/ormlite/stmt/Where;->and(Lcom/j256/ormlite/stmt/Where;Lcom/j256/ormlite/stmt/Where;[Lcom/j256/ormlite/stmt/Where;)Lcom/j256/ormlite/stmt/Where;

    move-result-object p1

    .line 89
    invoke-virtual {p1}, Lcom/j256/ormlite/stmt/Where;->query()Ljava/util/List;

    move-result-object p1

    goto :goto_1

    .line 92
    :cond_1
    invoke-virtual {p1, v1, v7}, Lcom/j256/ormlite/stmt/Where;->in(Ljava/lang/String;Ljava/lang/Iterable;)Lcom/j256/ormlite/stmt/Where;

    move-result-object p2

    sget-object p5, Lcom/argusoft/sewa/android/app/constants/FhsConstants;->FHS_INACTIVE_CRITERIA_MEMBER_STATES:Ljava/util/List;

    .line 93
    invoke-virtual {p1, v0, p5}, Lcom/j256/ormlite/stmt/Where;->notIn(Ljava/lang/String;Ljava/lang/Iterable;)Lcom/j256/ormlite/stmt/Where;

    move-result-object p5

    new-array p6, v5, [Lcom/j256/ormlite/stmt/Where;

    .line 94
    invoke-virtual {p1, p4}, Lcom/j256/ormlite/stmt/Where;->isNotNull(Ljava/lang/String;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    aput-object v0, p6, p3

    .line 95
    invoke-virtual {p1, p4, v3}, Lcom/j256/ormlite/stmt/Where;->le(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object p3

    aput-object p3, p6, v6

    .line 91
    invoke-virtual {p1, p2, p5, p6}, Lcom/j256/ormlite/stmt/Where;->and(Lcom/j256/ormlite/stmt/Where;Lcom/j256/ormlite/stmt/Where;[Lcom/j256/ormlite/stmt/Where;)Lcom/j256/ormlite/stmt/Where;

    move-result-object p1

    .line 96
    invoke-virtual {p1}, Lcom/j256/ormlite/stmt/Where;->query()Ljava/util/List;

    move-result-object p1

    .line 99
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/argusoft/sewa/android/app/model/MemberBean;

    .line 100
    new-instance p3, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-direct {p3, p2}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;-><init>(Lcom/argusoft/sewa/android/app/model/MemberBean;)V

    invoke-interface {v4, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 104
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    invoke-static {p2, p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    return-object v4
.end method

.method public retrieveMembersForNPCBSentByOA(Ljava/util/List;Ljava/lang/String;JJ)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            "JJ)",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/MemberDataBean;",
            ">;"
        }
    .end annotation

    .line 339
    const-string v0, "state"

    const-string v1, "familyId"

    const-string v2, "%"

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    const/16 v4, 0xb

    const/4 v5, 0x2

    .line 340
    invoke-virtual {v3, v5, v4}, Ljava/util/Calendar;->set(II)V

    const/4 v4, 0x5

    const/16 v6, 0x1f

    .line 341
    invoke-virtual {v3, v4, v6}, Ljava/util/Calendar;->set(II)V

    const/16 v4, -0x28

    const/4 v6, 0x1

    .line 342
    invoke-virtual {v3, v6, v4}, Ljava/util/Calendar;->add(II)V

    .line 343
    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    .line 345
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 348
    :try_start_0
    iget-object v7, p0, Lcom/argusoft/sewa/android/app/core/impl/NPCBServiceImpl;->familyBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v7}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v7

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v8

    .line 349
    invoke-virtual {v7, v8}, Lcom/j256/ormlite/stmt/QueryBuilder;->selectColumns([Ljava/lang/String;)Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v7

    .line 350
    invoke-virtual {v7}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v7

    const-string v8, "areaId"

    .line 351
    invoke-virtual {v7, v8, p1}, Lcom/j256/ormlite/stmt/Where;->in(Ljava/lang/String;Ljava/lang/Iterable;)Lcom/j256/ormlite/stmt/Where;

    move-result-object p1

    .line 352
    invoke-virtual {p1}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    move-result-object p1

    sget-object v7, Lcom/argusoft/sewa/android/app/constants/FhsConstants;->FHS_ACTIVE_CRITERIA_FAMILY_STATES:Ljava/util/List;

    .line 353
    invoke-virtual {p1, v0, v7}, Lcom/j256/ormlite/stmt/Where;->in(Ljava/lang/String;Ljava/lang/Iterable;)Lcom/j256/ormlite/stmt/Where;

    move-result-object p1

    .line 354
    invoke-virtual {p1}, Lcom/j256/ormlite/stmt/Where;->query()Ljava/util/List;

    move-result-object p1

    .line 356
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 357
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/argusoft/sewa/android/app/model/FamilyBean;

    .line 358
    invoke-virtual {v8}, Lcom/argusoft/sewa/android/app/model/FamilyBean;->getFamilyId()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 361
    :cond_0
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    .line 364
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/core/impl/NPCBServiceImpl;->memberBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {p1}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object p1

    .line 365
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/j256/ormlite/stmt/QueryBuilder;->limit(Ljava/lang/Long;)Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object p1

    .line 366
    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/j256/ormlite/stmt/QueryBuilder;->offset(Ljava/lang/Long;)Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object p1

    const/4 p3, 0x0

    .line 367
    invoke-virtual {p1, v1, p3}, Lcom/j256/ormlite/stmt/QueryBuilder;->orderBy(Ljava/lang/String;Z)Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object p1

    .line 368
    invoke-virtual {p1}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 370
    const-string p4, "dob"

    if-eqz p2, :cond_1

    .line 372
    :try_start_1
    invoke-virtual {p1, v1, v7}, Lcom/j256/ormlite/stmt/Where;->in(Ljava/lang/String;Ljava/lang/Iterable;)Lcom/j256/ormlite/stmt/Where;

    move-result-object p5

    sget-object p6, Lcom/argusoft/sewa/android/app/constants/FhsConstants;->FHS_INACTIVE_CRITERIA_MEMBER_STATES:Ljava/util/List;

    .line 373
    invoke-virtual {p1, v0, p6}, Lcom/j256/ormlite/stmt/Where;->notIn(Ljava/lang/String;Ljava/lang/Iterable;)Lcom/j256/ormlite/stmt/Where;

    move-result-object p6

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/j256/ormlite/stmt/Where;

    .line 374
    invoke-virtual {p1, p4}, Lcom/j256/ormlite/stmt/Where;->isNotNull(Ljava/lang/String;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v7

    aput-object v7, v0, p3

    .line 375
    invoke-virtual {p1, p4, v3}, Lcom/j256/ormlite/stmt/Where;->le(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object p4

    aput-object p4, v0, v6

    const-string p4, "uniqueHealthId"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 381
    invoke-virtual {p1, p4, v3}, Lcom/j256/ormlite/stmt/Where;->like(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object p4

    const-string v3, "firstName"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 382
    invoke-virtual {p1, v3, v7}, Lcom/j256/ormlite/stmt/Where;->like(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v3

    new-array v7, v5, [Lcom/j256/ormlite/stmt/Where;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 383
    invoke-virtual {p1, v1, v8}, Lcom/j256/ormlite/stmt/Where;->like(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v1

    aput-object v1, v7, p3

    const-string p3, "mobileNumber"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 384
    invoke-virtual {p1, p3, p2}, Lcom/j256/ormlite/stmt/Where;->like(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object p2

    aput-object p2, v7, v6

    .line 380
    invoke-virtual {p1, p4, v3, v7}, Lcom/j256/ormlite/stmt/Where;->or(Lcom/j256/ormlite/stmt/Where;Lcom/j256/ormlite/stmt/Where;[Lcom/j256/ormlite/stmt/Where;)Lcom/j256/ormlite/stmt/Where;

    move-result-object p2

    aput-object p2, v0, v5

    .line 371
    invoke-virtual {p1, p5, p6, v0}, Lcom/j256/ormlite/stmt/Where;->and(Lcom/j256/ormlite/stmt/Where;Lcom/j256/ormlite/stmt/Where;[Lcom/j256/ormlite/stmt/Where;)Lcom/j256/ormlite/stmt/Where;

    move-result-object p1

    .line 386
    invoke-virtual {p1}, Lcom/j256/ormlite/stmt/Where;->query()Ljava/util/List;

    move-result-object p1

    goto :goto_1

    .line 389
    :cond_1
    invoke-virtual {p1, v1, v7}, Lcom/j256/ormlite/stmt/Where;->in(Ljava/lang/String;Ljava/lang/Iterable;)Lcom/j256/ormlite/stmt/Where;

    move-result-object p2

    sget-object p5, Lcom/argusoft/sewa/android/app/constants/FhsConstants;->FHS_INACTIVE_CRITERIA_MEMBER_STATES:Ljava/util/List;

    .line 390
    invoke-virtual {p1, v0, p5}, Lcom/j256/ormlite/stmt/Where;->notIn(Ljava/lang/String;Ljava/lang/Iterable;)Lcom/j256/ormlite/stmt/Where;

    move-result-object p5

    new-array p6, v5, [Lcom/j256/ormlite/stmt/Where;

    .line 391
    invoke-virtual {p1, p4}, Lcom/j256/ormlite/stmt/Where;->isNotNull(Ljava/lang/String;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    aput-object v0, p6, p3

    .line 392
    invoke-virtual {p1, p4, v3}, Lcom/j256/ormlite/stmt/Where;->le(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object p3

    aput-object p3, p6, v6

    .line 388
    invoke-virtual {p1, p2, p5, p6}, Lcom/j256/ormlite/stmt/Where;->and(Lcom/j256/ormlite/stmt/Where;Lcom/j256/ormlite/stmt/Where;[Lcom/j256/ormlite/stmt/Where;)Lcom/j256/ormlite/stmt/Where;

    move-result-object p1

    .line 397
    invoke-virtual {p1}, Lcom/j256/ormlite/stmt/Where;->query()Ljava/util/List;

    move-result-object p1

    .line 400
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/argusoft/sewa/android/app/model/MemberBean;

    .line 401
    new-instance p3, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-direct {p3, p2}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;-><init>(Lcom/argusoft/sewa/android/app/model/MemberBean;)V

    invoke-interface {v4, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 405
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    invoke-static {p2, p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    return-object v4
.end method

.method public retrieveMembersSentByFieldHealthWorkers(Ljava/util/List;Ljava/lang/String;JJ)Ljava/util/List;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            "JJ)",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/MemberDataBean;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    .line 269
    const-string v2, "state"

    const-string v3, "familyId"

    const-string v4, "%"

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    const/16 v6, 0xb

    const/4 v7, 0x2

    .line 270
    invoke-virtual {v5, v7, v6}, Ljava/util/Calendar;->set(II)V

    const/16 v6, 0x1f

    const/4 v8, 0x5

    .line 271
    invoke-virtual {v5, v8, v6}, Ljava/util/Calendar;->set(II)V

    const/16 v6, -0x28

    const/4 v9, 0x1

    .line 272
    invoke-virtual {v5, v9, v6}, Ljava/util/Calendar;->add(II)V

    .line 273
    invoke-virtual {v5}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v5

    .line 275
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 278
    :try_start_0
    iget-object v10, v1, Lcom/argusoft/sewa/android/app/core/impl/NPCBServiceImpl;->familyBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v10}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v10

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v11

    .line 279
    invoke-virtual {v10, v11}, Lcom/j256/ormlite/stmt/QueryBuilder;->selectColumns([Ljava/lang/String;)Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v10

    .line 280
    invoke-virtual {v10}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v10

    const-string v11, "areaId"

    move-object/from16 v12, p1

    .line 281
    invoke-virtual {v10, v11, v12}, Lcom/j256/ormlite/stmt/Where;->in(Ljava/lang/String;Ljava/lang/Iterable;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v10

    .line 282
    invoke-virtual {v10}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    move-result-object v10

    sget-object v11, Lcom/argusoft/sewa/android/app/constants/FhsConstants;->FHS_ACTIVE_CRITERIA_FAMILY_STATES:Ljava/util/List;

    .line 283
    invoke-virtual {v10, v2, v11}, Lcom/j256/ormlite/stmt/Where;->in(Ljava/lang/String;Ljava/lang/Iterable;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v10

    .line 284
    invoke-virtual {v10}, Lcom/j256/ormlite/stmt/Where;->query()Ljava/util/List;

    move-result-object v10

    .line 286
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 287
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_0

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/argusoft/sewa/android/app/model/FamilyBean;

    .line 288
    invoke-virtual {v12}, Lcom/argusoft/sewa/android/app/model/FamilyBean;->getFamilyId()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 291
    :cond_0
    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_2

    .line 294
    iget-object v10, v1, Lcom/argusoft/sewa/android/app/core/impl/NPCBServiceImpl;->memberBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v10}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v10

    .line 295
    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v10, v12}, Lcom/j256/ormlite/stmt/QueryBuilder;->limit(Ljava/lang/Long;)Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v10

    .line 296
    invoke-static/range {p5 .. p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v10, v12}, Lcom/j256/ormlite/stmt/QueryBuilder;->offset(Ljava/lang/Long;)Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v10

    const/4 v12, 0x0

    .line 297
    invoke-virtual {v10, v3, v12}, Lcom/j256/ormlite/stmt/QueryBuilder;->orderBy(Ljava/lang/String;Z)Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v10

    .line 298
    invoke-virtual {v10}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v10
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 300
    const-string v13, "REFERRED_TO_CHO"

    const-string v15, "imtMemberNpcbStatus"

    const-string v14, "dob"

    if-eqz v0, :cond_1

    .line 302
    :try_start_1
    invoke-virtual {v10, v3, v11}, Lcom/j256/ormlite/stmt/Where;->in(Ljava/lang/String;Ljava/lang/Iterable;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v11

    sget-object v7, Lcom/argusoft/sewa/android/app/constants/FhsConstants;->FHS_INACTIVE_CRITERIA_MEMBER_STATES:Ljava/util/List;

    .line 303
    invoke-virtual {v10, v2, v7}, Lcom/j256/ormlite/stmt/Where;->notIn(Ljava/lang/String;Ljava/lang/Iterable;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v2

    new-array v7, v8, [Lcom/j256/ormlite/stmt/Where;

    .line 304
    invoke-virtual {v10, v14}, Lcom/j256/ormlite/stmt/Where;->isNotNull(Ljava/lang/String;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v8

    aput-object v8, v7, v12

    .line 305
    invoke-virtual {v10, v15}, Lcom/j256/ormlite/stmt/Where;->isNotNull(Ljava/lang/String;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v8

    aput-object v8, v7, v9

    .line 306
    invoke-virtual {v10, v14, v5}, Lcom/j256/ormlite/stmt/Where;->le(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v5

    const/4 v8, 0x2

    aput-object v5, v7, v8

    .line 307
    invoke-virtual {v10, v15, v13}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v5

    const/4 v8, 0x3

    aput-object v5, v7, v8

    const-string v5, "uniqueHealthId"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 309
    invoke-virtual {v10, v5, v8}, Lcom/j256/ormlite/stmt/Where;->like(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v5

    const-string v8, "firstName"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 310
    invoke-virtual {v10, v8, v13}, Lcom/j256/ormlite/stmt/Where;->like(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v8

    const/4 v13, 0x2

    new-array v13, v13, [Lcom/j256/ormlite/stmt/Where;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 311
    invoke-virtual {v10, v3, v14}, Lcom/j256/ormlite/stmt/Where;->like(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v3

    aput-object v3, v13, v12

    const-string v3, "mobileNumber"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 312
    invoke-virtual {v10, v3, v0}, Lcom/j256/ormlite/stmt/Where;->like(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    aput-object v0, v13, v9

    .line 308
    invoke-virtual {v10, v5, v8, v13}, Lcom/j256/ormlite/stmt/Where;->or(Lcom/j256/ormlite/stmt/Where;Lcom/j256/ormlite/stmt/Where;[Lcom/j256/ormlite/stmt/Where;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    const/4 v3, 0x4

    aput-object v0, v7, v3

    .line 301
    invoke-virtual {v10, v11, v2, v7}, Lcom/j256/ormlite/stmt/Where;->and(Lcom/j256/ormlite/stmt/Where;Lcom/j256/ormlite/stmt/Where;[Lcom/j256/ormlite/stmt/Where;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    .line 314
    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/Where;->query()Ljava/util/List;

    move-result-object v0

    goto :goto_1

    .line 317
    :cond_1
    invoke-virtual {v10, v3, v11}, Lcom/j256/ormlite/stmt/Where;->in(Ljava/lang/String;Ljava/lang/Iterable;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    sget-object v3, Lcom/argusoft/sewa/android/app/constants/FhsConstants;->FHS_INACTIVE_CRITERIA_MEMBER_STATES:Ljava/util/List;

    .line 318
    invoke-virtual {v10, v2, v3}, Lcom/j256/ormlite/stmt/Where;->notIn(Ljava/lang/String;Ljava/lang/Iterable;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v2

    const/4 v3, 0x4

    new-array v3, v3, [Lcom/j256/ormlite/stmt/Where;

    .line 319
    invoke-virtual {v10, v14}, Lcom/j256/ormlite/stmt/Where;->isNotNull(Ljava/lang/String;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v4

    aput-object v4, v3, v12

    .line 320
    invoke-virtual {v10, v15}, Lcom/j256/ormlite/stmt/Where;->isNotNull(Ljava/lang/String;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v4

    aput-object v4, v3, v9

    .line 321
    invoke-virtual {v10, v14, v5}, Lcom/j256/ormlite/stmt/Where;->le(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v4

    const/4 v5, 0x2

    aput-object v4, v3, v5

    .line 322
    invoke-virtual {v10, v15, v13}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v4

    const/4 v5, 0x3

    aput-object v4, v3, v5

    .line 316
    invoke-virtual {v10, v0, v2, v3}, Lcom/j256/ormlite/stmt/Where;->and(Lcom/j256/ormlite/stmt/Where;Lcom/j256/ormlite/stmt/Where;[Lcom/j256/ormlite/stmt/Where;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    .line 323
    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/Where;->query()Ljava/util/List;

    move-result-object v0

    .line 326
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/argusoft/sewa/android/app/model/MemberBean;

    .line 327
    new-instance v3, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-direct {v3, v2}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;-><init>(Lcom/argusoft/sewa/android/app/model/MemberBean;)V

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 331
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    return-object v6
.end method
