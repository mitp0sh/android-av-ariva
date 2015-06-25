.class public final Lcom/avira/android/blacklist/d/p;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final CREATE_TABLE:Ljava/lang/String; = "create table blacklistNumbersTable (contactNumber text not null, ownerId integer not null, blockedStatus text not null);"


# instance fields
.field final synthetic a:Lcom/avira/android/blacklist/d/l;

.field private final b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/avira/android/blacklist/d/s;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/avira/android/blacklist/d/l;)V
    .locals 2

    .prologue
    .line 867
    iput-object p1, p0, Lcom/avira/android/blacklist/d/p;->a:Lcom/avira/android/blacklist/d/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 868
    invoke-static {}, Lcom/avira/android/database/h;->e()Lcom/avira/android/database/h;

    move-result-object v0

    const-string v1, "blacklistNumbersTable"

    invoke-virtual {v0, v1}, Lcom/avira/android/database/h;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 870
    invoke-static {p1}, Lcom/avira/android/blacklist/d/l;->a(Lcom/avira/android/blacklist/d/l;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "create table blacklistNumbersTable (contactNumber text not null, ownerId integer not null, blockedStatus text not null);"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 873
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/avira/android/blacklist/d/p;->b:Ljava/util/ArrayList;

    .line 874
    return-void
.end method

.method private a(J)Z
    .locals 11

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1006
    .line 1009
    :try_start_0
    iget-object v2, p0, Lcom/avira/android/blacklist/d/p;->a:Lcom/avira/android/blacklist/d/l;

    invoke-static {v2}, Lcom/avira/android/blacklist/d/l;->a(Lcom/avira/android/blacklist/d/l;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string v3, "blacklistNumbersTable"

    const-string v4, "ownerId=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/avira/android/blacklist/d/p;->a:Lcom/avira/android/blacklist/d/l;

    invoke-static {v7}, Lcom/avira/android/blacklist/d/l;->c(Lcom/avira/android/blacklist/d/l;)Lcom/avira/android/database/h;

    move-result-object v7

    const-string v8, "ownerId"

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/avira/android/database/h;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v2, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-lez v2, :cond_0

    .line 1016
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/avira/android/blacklist/d/p;->a:Lcom/avira/android/blacklist/d/l;

    invoke-static {v1}, Lcom/avira/android/blacklist/d/l;->d(Lcom/avira/android/blacklist/d/l;)Lcom/avira/android/blacklist/d/n;

    move-result-object v1

    invoke-static {v1, p1, p2}, Lcom/avira/android/blacklist/d/n;->a(Lcom/avira/android/blacklist/d/n;J)I

    .line 1018
    iget-object v1, p0, Lcom/avira/android/blacklist/d/p;->a:Lcom/avira/android/blacklist/d/l;

    const-string v2, "blacklistNumbersTable"

    invoke-static {v1, v2}, Lcom/avira/android/blacklist/d/l;->a(Lcom/avira/android/blacklist/d/l;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1025
    :goto_1
    return v0

    :cond_0
    move v0, v1

    .line 1009
    goto :goto_0

    .line 1020
    :catch_0
    move-exception v0

    move-object v10, v0

    move v0, v1

    move-object v1, v10

    .line 1022
    :goto_2
    invoke-static {}, Lcom/avira/android/utilities/t;->b()Lcom/avira/android/utilities/t;

    move-result-object v2

    const-string v3, "BLNumber.deleteNumbersByContactId"

    const-string v4, "Exception"

    invoke-virtual {v2, v3, v4, v1}, Lcom/avira/android/utilities/t;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 1020
    :catch_1
    move-exception v1

    goto :goto_2
.end method

.method static synthetic a(Lcom/avira/android/blacklist/d/p;J)Z
    .locals 1

    .prologue
    .line 859
    invoke-direct {p0, p1, p2}, Lcom/avira/android/blacklist/d/p;->a(J)Z

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/avira/android/blacklist/d/p;JLjava/lang/String;Lcom/avira/android/blacklist/d/j;)Z
    .locals 1

    .prologue
    .line 859
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/avira/android/blacklist/d/p;->b(JLjava/lang/String;Lcom/avira/android/blacklist/d/j;)Z

    move-result v0

    return v0
.end method

.method private b(J)Lcom/avira/android/blacklist/model/BLContact;
    .locals 13

    .prologue
    const/4 v10, 0x0

    .line 1037
    iget-object v0, p0, Lcom/avira/android/blacklist/d/p;->a:Lcom/avira/android/blacklist/d/l;

    invoke-virtual {v0}, Lcom/avira/android/blacklist/d/l;->b()Lcom/avira/android/blacklist/d/q;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/avira/android/blacklist/d/q;->a(J)Lcom/avira/android/blacklist/model/BLContact;

    move-result-object v11

    .line 1038
    if-eqz v11, :cond_1

    .line 1043
    :try_start_0
    iget-object v0, p0, Lcom/avira/android/blacklist/d/p;->a:Lcom/avira/android/blacklist/d/l;

    invoke-static {v0}, Lcom/avira/android/blacklist/d/l;->a(Lcom/avira/android/blacklist/d/l;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "blacklistNumbersTable"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "contactNumber"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "ownerId"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string v5, "blockedStatus"

    aput-object v5, v3, v4

    const-string v4, "ownerId=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/avira/android/blacklist/d/p;->a:Lcom/avira/android/blacklist/d/l;

    invoke-static {v7}, Lcom/avira/android/blacklist/d/l;->c(Lcom/avira/android/blacklist/d/l;)Lcom/avira/android/database/h;

    move-result-object v7

    const-string v8, "ownerId"

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/avira/android/database/h;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v0 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 1050
    :goto_0
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1052
    iget-object v0, p0, Lcom/avira/android/blacklist/d/p;->a:Lcom/avira/android/blacklist/d/l;

    invoke-static {v0}, Lcom/avira/android/blacklist/d/l;->c(Lcom/avira/android/blacklist/d/l;)Lcom/avira/android/database/h;

    move-result-object v0

    const-string v2, "contactNumber"

    const-string v3, "contactNumber"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/avira/android/database/h;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1054
    iget-object v2, p0, Lcom/avira/android/blacklist/d/p;->a:Lcom/avira/android/blacklist/d/l;

    invoke-static {v2}, Lcom/avira/android/blacklist/d/l;->c(Lcom/avira/android/blacklist/d/l;)Lcom/avira/android/database/h;

    move-result-object v2

    const-string v3, "blockedStatus"

    const-string v4, "blockedStatus"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/avira/android/database/h;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1056
    invoke-static {v2}, Lcom/avira/android/blacklist/d/j;->valueOf(Ljava/lang/String;)Lcom/avira/android/blacklist/d/j;

    move-result-object v2

    invoke-virtual {v11, v0, v2}, Lcom/avira/android/blacklist/model/BLContact;->a(Ljava/lang/String;Lcom/avira/android/blacklist/d/j;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1059
    :catch_0
    move-exception v0

    .line 1061
    :goto_1
    invoke-static {}, Lcom/avira/android/utilities/t;->b()Lcom/avira/android/utilities/t;

    move-result-object v2

    const-string v3, "BLNumber.getNumbersByContactId"

    const-string v4, "Exception"

    invoke-virtual {v2, v3, v4, v0}, Lcom/avira/android/utilities/t;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1064
    :cond_0
    if-eqz v1, :cond_1

    .line 1066
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1069
    :cond_1
    return-object v11

    .line 1059
    :catch_1
    move-exception v0

    move-object v1, v10

    goto :goto_1
.end method

.method private b(JLjava/lang/String;Lcom/avira/android/blacklist/d/j;)Z
    .locals 15

    .prologue
    .line 950
    const/4 v3, 0x0

    .line 953
    :try_start_0
    invoke-direct/range {p0 .. p2}, Lcom/avira/android/blacklist/d/p;->b(J)Lcom/avira/android/blacklist/model/BLContact;

    move-result-object v4

    .line 955
    new-instance v2, Lcom/avira/android/database/e;

    invoke-direct {v2}, Lcom/avira/android/database/e;-><init>()V

    .line 956
    const-string v5, "contactNumber"

    move-object/from16 v0, p3

    invoke-virtual {v2, v5, v0}, Lcom/avira/android/database/e;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/avira/android/database/e;

    .line 957
    const-string v5, "ownerId"

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v2, v5, v6, v7}, Lcom/avira/android/database/e;->a(Ljava/lang/String;J)Lcom/avira/android/database/e;

    .line 958
    const-string v5, "blockedStatus"

    invoke-virtual/range {p4 .. p4}, Lcom/avira/android/blacklist/d/j;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lcom/avira/android/database/e;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/avira/android/database/e;

    .line 959
    iget-object v5, p0, Lcom/avira/android/blacklist/d/p;->a:Lcom/avira/android/blacklist/d/l;

    invoke-static {v5}, Lcom/avira/android/blacklist/d/l;->a(Lcom/avira/android/blacklist/d/l;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    const-string v6, "blacklistNumbersTable"

    invoke-virtual {v2}, Lcom/avira/android/database/e;->a()Landroid/content/ContentValues;

    move-result-object v2

    const-string v7, "ownerId=?"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/avira/android/blacklist/d/p;->a:Lcom/avira/android/blacklist/d/l;

    invoke-static {v10}, Lcom/avira/android/blacklist/d/l;->c(Lcom/avira/android/blacklist/d/l;)Lcom/avira/android/database/h;

    move-result-object v10

    const-string v11, "ownerId"

    invoke-static/range {p1 .. p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Lcom/avira/android/database/h;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v5, v6, v2, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_0

    const/4 v3, 0x1

    .line 967
    :goto_0
    iget-object v2, p0, Lcom/avira/android/blacklist/d/p;->a:Lcom/avira/android/blacklist/d/l;

    const-string v5, "blacklistNumbersTable"

    invoke-static {v2, v5}, Lcom/avira/android/blacklist/d/l;->a(Lcom/avira/android/blacklist/d/l;Ljava/lang/String;)V

    .line 969
    invoke-direct/range {p0 .. p2}, Lcom/avira/android/blacklist/d/p;->b(J)Lcom/avira/android/blacklist/model/BLContact;

    move-result-object v5

    .line 970
    iget-object v2, p0, Lcom/avira/android/blacklist/d/p;->b:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/avira/android/blacklist/d/s;

    invoke-interface {v2, v4, v5}, Lcom/avira/android/blacklist/d/s;->a(Lcom/avira/android/blacklist/model/BLContact;Lcom/avira/android/blacklist/model/BLContact;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 972
    :catch_0
    move-exception v2

    move-object v13, v2

    move v2, v3

    move-object v3, v13

    .line 974
    invoke-static {}, Lcom/avira/android/utilities/t;->b()Lcom/avira/android/utilities/t;

    move-result-object v4

    const-string v5, "BLNumber.updateNumber"

    const-string v6, "Exception"

    invoke-virtual {v4, v5, v6, v3}, Lcom/avira/android/utilities/t;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 976
    :goto_2
    return v2

    .line 959
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    :cond_1
    move v2, v3

    .line 975
    goto :goto_2
.end method


# virtual methods
.method final a(JLjava/lang/String;Lcom/avira/android/blacklist/d/j;)J
    .locals 11

    .prologue
    .line 908
    const-wide/16 v8, 0x0

    iget-object v0, p0, Lcom/avira/android/blacklist/d/p;->a:Lcom/avira/android/blacklist/d/l;

    invoke-static {v0}, Lcom/avira/android/blacklist/d/l;->a(Lcom/avira/android/blacklist/d/l;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "blacklistNumbersTable"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "ownerId"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "contactNumber"

    aput-object v4, v2, v3

    const-string v3, "ownerId=? AND contactNumber=?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/avira/android/blacklist/d/p;->a:Lcom/avira/android/blacklist/d/l;

    invoke-static {v6}, Lcom/avira/android/blacklist/d/l;->c(Lcom/avira/android/blacklist/d/l;)Lcom/avira/android/database/h;

    move-result-object v6

    const-string v7, "ownerId"

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v7, v10}, Lcom/avira/android/database/h;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/avira/android/blacklist/d/p;->a:Lcom/avira/android/blacklist/d/l;

    invoke-static {v6}, Lcom/avira/android/blacklist/d/l;->c(Lcom/avira/android/blacklist/d/l;)Lcom/avira/android/database/h;

    move-result-object v6

    const-string v7, "contactNumber"

    invoke-virtual {v6, v7, p3}, Lcom/avira/android/database/h;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/avira/android/blacklist/d/p;->a:Lcom/avira/android/blacklist/d/l;

    invoke-static {v0}, Lcom/avira/android/blacklist/d/l;->c(Lcom/avira/android/blacklist/d/l;)Lcom/avira/android/database/h;

    move-result-object v0

    const-string v1, "ownerId"

    const-string v3, "ownerId"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/avira/android/database/h;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 909
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 911
    invoke-direct {p0, v0, v1, p3, p4}, Lcom/avira/android/blacklist/d/p;->b(JLjava/lang/String;Lcom/avira/android/blacklist/d/j;)Z

    .line 931
    :goto_1
    return-wide v0

    .line 917
    :cond_0
    :try_start_0
    new-instance v2, Lcom/avira/android/database/e;

    invoke-direct {v2}, Lcom/avira/android/database/e;-><init>()V

    .line 918
    const-string v3, "contactNumber"

    invoke-virtual {v2, v3, p3}, Lcom/avira/android/database/e;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/avira/android/database/e;

    .line 919
    const-string v3, "blockedStatus"

    invoke-virtual {p4}, Lcom/avira/android/blacklist/d/j;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/avira/android/database/e;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/avira/android/database/e;

    .line 920
    const-string v3, "ownerId"

    invoke-virtual {v2, v3, p1, p2}, Lcom/avira/android/database/e;->a(Ljava/lang/String;J)Lcom/avira/android/database/e;

    .line 922
    iget-object v3, p0, Lcom/avira/android/blacklist/d/p;->a:Lcom/avira/android/blacklist/d/l;

    invoke-static {v3}, Lcom/avira/android/blacklist/d/l;->a(Lcom/avira/android/blacklist/d/l;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    const-string v4, "blacklistNumbersTable"

    const/4 v5, 0x0

    invoke-virtual {v2}, Lcom/avira/android/database/e;->a()Landroid/content/ContentValues;

    move-result-object v2

    invoke-virtual {v3, v4, v5, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    .line 924
    iget-object v2, p0, Lcom/avira/android/blacklist/d/p;->a:Lcom/avira/android/blacklist/d/l;

    const-string v3, "blacklistNumbersTable"

    invoke-static {v2, v3}, Lcom/avira/android/blacklist/d/l;->a(Lcom/avira/android/blacklist/d/l;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 926
    :catch_0
    move-exception v2

    .line 928
    invoke-static {}, Lcom/avira/android/utilities/t;->b()Lcom/avira/android/utilities/t;

    move-result-object v3

    const-string v4, "BLNumber.addNumber"

    const-string v5, "Exception"

    invoke-virtual {v3, v4, v5, v2}, Lcom/avira/android/utilities/t;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_1
    move-wide v0, v8

    goto :goto_0
.end method

.method final a(Lcom/avira/android/blacklist/d/s;)V
    .locals 1

    .prologue
    .line 878
    iget-object v0, p0, Lcom/avira/android/blacklist/d/p;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 879
    return-void
.end method

.method final b(Lcom/avira/android/blacklist/d/s;)V
    .locals 1

    .prologue
    .line 883
    iget-object v0, p0, Lcom/avira/android/blacklist/d/p;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 884
    return-void
.end method
