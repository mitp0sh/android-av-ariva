.class public final Lcom/avira/android/blacklist/d/q;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final CREATE_TABLE:Ljava/lang/String; = "create table blacklistTable (contactId text not null, contactName text not null);"


# instance fields
.field final synthetic a:Lcom/avira/android/blacklist/d/l;

.field private final b:Ljava/util/Random;


# direct methods
.method public constructor <init>(Lcom/avira/android/blacklist/d/l;)V
    .locals 4

    .prologue
    .line 586
    iput-object p1, p0, Lcom/avira/android/blacklist/d/q;->a:Lcom/avira/android/blacklist/d/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 587
    invoke-static {}, Lcom/avira/android/database/h;->e()Lcom/avira/android/database/h;

    move-result-object v0

    const-string v1, "blacklistTable"

    invoke-virtual {v0, v1}, Lcom/avira/android/database/h;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 589
    invoke-static {p1}, Lcom/avira/android/blacklist/d/l;->a(Lcom/avira/android/blacklist/d/l;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "create table blacklistTable (contactId text not null, contactName text not null);"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 592
    :cond_0
    new-instance v0, Ljava/util/Random;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Random;-><init>(J)V

    iput-object v0, p0, Lcom/avira/android/blacklist/d/q;->b:Ljava/util/Random;

    .line 593
    return-void
.end method

.method private a(JLjava/lang/String;)Z
    .locals 15

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 642
    .line 645
    :try_start_0
    new-instance v3, Lcom/avira/android/database/e;

    invoke-direct {v3}, Lcom/avira/android/database/e;-><init>()V

    .line 646
    const-string v4, "contactName"

    move-object/from16 v0, p3

    invoke-virtual {v3, v4, v0}, Lcom/avira/android/database/e;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/avira/android/database/e;

    .line 648
    iget-object v4, p0, Lcom/avira/android/blacklist/d/q;->a:Lcom/avira/android/blacklist/d/l;

    invoke-static {v4}, Lcom/avira/android/blacklist/d/l;->a(Lcom/avira/android/blacklist/d/l;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    const-string v5, "blacklistTable"

    invoke-virtual {v3}, Lcom/avira/android/database/e;->a()Landroid/content/ContentValues;

    move-result-object v3

    const-string v6, "contactId=?"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/avira/android/blacklist/d/q;->a:Lcom/avira/android/blacklist/d/l;

    invoke-static {v9}, Lcom/avira/android/blacklist/d/l;->c(Lcom/avira/android/blacklist/d/l;)Lcom/avira/android/database/h;

    move-result-object v9

    const-string v10, "contactId"

    invoke-static/range {p1 .. p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lcom/avira/android/database/h;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v4, v5, v3, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-lez v3, :cond_0

    .line 654
    :goto_0
    :try_start_1
    iget-object v2, p0, Lcom/avira/android/blacklist/d/q;->a:Lcom/avira/android/blacklist/d/l;

    const-string v3, "blacklistTable"

    invoke-static {v2, v3}, Lcom/avira/android/blacklist/d/l;->a(Lcom/avira/android/blacklist/d/l;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 660
    :goto_1
    return v1

    :cond_0
    move v1, v2

    .line 648
    goto :goto_0

    .line 656
    :catch_0
    move-exception v1

    move-object v12, v1

    move v1, v2

    move-object v2, v12

    .line 658
    :goto_2
    invoke-static {}, Lcom/avira/android/utilities/t;->b()Lcom/avira/android/utilities/t;

    move-result-object v3

    const-string v4, "BLDatabaseHelper.updateContact"

    const-string v5, "Exception"

    invoke-virtual {v3, v4, v5, v2}, Lcom/avira/android/utilities/t;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 656
    :catch_1
    move-exception v2

    goto :goto_2
.end method


# virtual methods
.method final a(Ljava/lang/String;)J
    .locals 11

    .prologue
    const-wide/16 v8, 0x0

    const/4 v4, 0x1

    const/4 v10, 0x0

    const/4 v5, 0x0

    .line 605
    iget-object v0, p0, Lcom/avira/android/blacklist/d/q;->a:Lcom/avira/android/blacklist/d/l;

    invoke-static {v0}, Lcom/avira/android/blacklist/d/l;->a(Lcom/avira/android/blacklist/d/l;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "blacklistTable"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "contactId"

    aput-object v3, v2, v10

    const-string v3, "contactName"

    aput-object v3, v2, v4

    const-string v3, "contactName=?"

    new-array v4, v4, [Ljava/lang/String;

    iget-object v6, p0, Lcom/avira/android/blacklist/d/q;->a:Lcom/avira/android/blacklist/d/l;

    invoke-static {v6}, Lcom/avira/android/blacklist/d/l;->c(Lcom/avira/android/blacklist/d/l;)Lcom/avira/android/database/h;

    move-result-object v6

    const-string v7, "contactName"

    invoke-virtual {v6, v7, p1}, Lcom/avira/android/database/h;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v10

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "contactId"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 606
    cmp-long v2, v0, v8

    if-lez v2, :cond_0

    .line 608
    invoke-direct {p0, v0, v1, p1}, Lcom/avira/android/blacklist/d/q;->a(JLjava/lang/String;)Z

    .line 627
    :goto_1
    return-wide v0

    .line 614
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/avira/android/blacklist/d/q;->b:Ljava/util/Random;

    invoke-virtual {v2}, Ljava/util/Random;->nextInt()I

    move-result v0

    int-to-long v0, v0

    .line 615
    new-instance v2, Lcom/avira/android/database/e;

    invoke-direct {v2}, Lcom/avira/android/database/e;-><init>()V

    .line 616
    const-string v3, "contactName"

    invoke-virtual {v2, v3, p1}, Lcom/avira/android/database/e;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/avira/android/database/e;

    .line 617
    const-string v3, "contactId"

    invoke-virtual {v2, v3, v0, v1}, Lcom/avira/android/database/e;->a(Ljava/lang/String;J)Lcom/avira/android/database/e;

    .line 619
    iget-object v3, p0, Lcom/avira/android/blacklist/d/q;->a:Lcom/avira/android/blacklist/d/l;

    invoke-static {v3}, Lcom/avira/android/blacklist/d/l;->a(Lcom/avira/android/blacklist/d/l;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    const-string v4, "blacklistTable"

    const/4 v5, 0x0

    invoke-virtual {v2}, Lcom/avira/android/database/e;->a()Landroid/content/ContentValues;

    move-result-object v2

    invoke-virtual {v3, v4, v5, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 620
    iget-object v2, p0, Lcom/avira/android/blacklist/d/q;->a:Lcom/avira/android/blacklist/d/l;

    const-string v3, "blacklistTable"

    invoke-static {v2, v3}, Lcom/avira/android/blacklist/d/l;->a(Lcom/avira/android/blacklist/d/l;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 622
    :catch_0
    move-exception v2

    .line 624
    invoke-static {}, Lcom/avira/android/utilities/t;->b()Lcom/avira/android/utilities/t;

    move-result-object v3

    const-string v4, "BLDatabaseHelper.addContact"

    const-string v5, "Exception"

    invoke-virtual {v3, v4, v5, v2}, Lcom/avira/android/utilities/t;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_1
    move-wide v0, v8

    goto :goto_0
.end method

.method public final a(J)Lcom/avira/android/blacklist/model/BLContact;
    .locals 13

    .prologue
    const/4 v10, 0x0

    .line 672
    .line 676
    :try_start_0
    iget-object v0, p0, Lcom/avira/android/blacklist/d/q;->a:Lcom/avira/android/blacklist/d/l;

    invoke-static {v0}, Lcom/avira/android/blacklist/d/l;->a(Lcom/avira/android/blacklist/d/l;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "blacklistTable"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "contactId"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "contactName"

    aput-object v5, v3, v4

    const-string v4, "contactId=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/avira/android/blacklist/d/q;->a:Lcom/avira/android/blacklist/d/l;

    invoke-static {v7}, Lcom/avira/android/blacklist/d/l;->c(Lcom/avira/android/blacklist/d/l;)Lcom/avira/android/database/h;

    move-result-object v7

    const-string v8, "contactId"

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

    move-result-object v9

    .line 684
    if-eqz v9, :cond_2

    .line 686
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 688
    iget-object v0, p0, Lcom/avira/android/blacklist/d/q;->a:Lcom/avira/android/blacklist/d/l;

    invoke-static {v0}, Lcom/avira/android/blacklist/d/l;->c(Lcom/avira/android/blacklist/d/l;)Lcom/avira/android/database/h;

    move-result-object v0

    const-string v1, "contactName"

    const-string v2, "contactName"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/avira/android/database/h;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 690
    iget-object v1, p0, Lcom/avira/android/blacklist/d/q;->a:Lcom/avira/android/blacklist/d/l;

    invoke-static {v1}, Lcom/avira/android/blacklist/d/l;->c(Lcom/avira/android/blacklist/d/l;)Lcom/avira/android/database/h;

    move-result-object v1

    const-string v2, "contactId"

    const-string v3, "contactId"

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/avira/android/database/h;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 693
    new-instance v8, Lcom/avira/android/blacklist/model/BLContact;

    invoke-direct {v8, v0, v6, v7}, Lcom/avira/android/blacklist/model/BLContact;-><init>(Ljava/lang/String;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 695
    :try_start_1
    iget-object v0, p0, Lcom/avira/android/blacklist/d/q;->a:Lcom/avira/android/blacklist/d/l;

    invoke-static {v0}, Lcom/avira/android/blacklist/d/l;->a(Lcom/avira/android/blacklist/d/l;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "blacklistNumbersTable"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "ownerId"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "contactNumber"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "blockedStatus"

    aput-object v4, v2, v3

    const-string v3, "ownerId=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v10, p0, Lcom/avira/android/blacklist/d/q;->a:Lcom/avira/android/blacklist/d/l;

    invoke-static {v10}, Lcom/avira/android/blacklist/d/l;->c(Lcom/avira/android/blacklist/d/l;)Lcom/avira/android/database/h;

    move-result-object v10

    const-string v11, "ownerId"

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v10, v11, v6}, Lcom/avira/android/database/h;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 700
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 702
    iget-object v1, p0, Lcom/avira/android/blacklist/d/q;->a:Lcom/avira/android/blacklist/d/l;

    invoke-static {v1}, Lcom/avira/android/blacklist/d/l;->c(Lcom/avira/android/blacklist/d/l;)Lcom/avira/android/database/h;

    move-result-object v1

    const-string v2, "contactNumber"

    const-string v3, "contactNumber"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/avira/android/database/h;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 705
    iget-object v2, p0, Lcom/avira/android/blacklist/d/q;->a:Lcom/avira/android/blacklist/d/l;

    invoke-static {v2}, Lcom/avira/android/blacklist/d/l;->c(Lcom/avira/android/blacklist/d/l;)Lcom/avira/android/database/h;

    move-result-object v2

    const-string v3, "blockedStatus"

    const-string v4, "blockedStatus"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/avira/android/database/h;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 709
    invoke-static {v2}, Lcom/avira/android/blacklist/d/j;->valueOf(Ljava/lang/String;)Lcom/avira/android/blacklist/d/j;

    move-result-object v2

    invoke-virtual {v8, v1, v2}, Lcom/avira/android/blacklist/model/BLContact;->a(Ljava/lang/String;Lcom/avira/android/blacklist/d/j;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 716
    :catch_0
    move-exception v0

    move-object v1, v0

    move-object v0, v8

    .line 718
    :goto_1
    invoke-static {}, Lcom/avira/android/utilities/t;->b()Lcom/avira/android/utilities/t;

    move-result-object v2

    const-string v3, "BlacklistTable.getContact"

    const-string v4, "Exception"

    invoke-virtual {v2, v3, v4, v1}, Lcom/avira/android/utilities/t;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 721
    :goto_2
    return-object v0

    .line 711
    :cond_0
    :try_start_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-object v0, v8

    .line 713
    :goto_3
    :try_start_3
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    .line 716
    :catch_1
    move-exception v1

    goto :goto_1

    :catch_2
    move-exception v0

    move-object v1, v0

    move-object v0, v10

    goto :goto_1

    :cond_1
    move-object v0, v10

    goto :goto_3

    :cond_2
    move-object v0, v10

    goto :goto_2
.end method

.method final a(JLjava/lang/String;Ljava/lang/String;Lcom/avira/android/blacklist/d/j;)Z
    .locals 7

    .prologue
    .line 726
    const/4 v1, 0x0

    .line 730
    :try_start_0
    iget-object v0, p0, Lcom/avira/android/blacklist/d/q;->a:Lcom/avira/android/blacklist/d/l;

    invoke-static {v0}, Lcom/avira/android/blacklist/d/l;->b(Lcom/avira/android/blacklist/d/l;)Lcom/avira/android/blacklist/d/p;

    move-result-object v0

    invoke-static {v0, p1, p2, p4, p5}, Lcom/avira/android/blacklist/d/p;->a(Lcom/avira/android/blacklist/d/p;JLjava/lang/String;Lcom/avira/android/blacklist/d/j;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 731
    :try_start_1
    invoke-direct {p0, p1, p2, p3}, Lcom/avira/android/blacklist/d/q;->a(JLjava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    and-int/2addr v0, v1

    .line 733
    :try_start_2
    iget-object v1, p0, Lcom/avira/android/blacklist/d/q;->a:Lcom/avira/android/blacklist/d/l;

    const-string v2, "blacklistTable"

    invoke-static {v1, v2}, Lcom/avira/android/blacklist/d/l;->a(Lcom/avira/android/blacklist/d/l;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 740
    :goto_0
    return v0

    .line 735
    :catch_0
    move-exception v0

    move-object v5, v0

    move v0, v1

    move-object v1, v5

    .line 737
    :goto_1
    invoke-static {}, Lcom/avira/android/utilities/t;->b()Lcom/avira/android/utilities/t;

    move-result-object v2

    const-string v3, "BLNumber.updateNumber"

    const-string v4, "Exception"

    invoke-virtual {v2, v3, v4, v1}, Lcom/avira/android/utilities/t;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 735
    :catch_1
    move-exception v0

    move-object v5, v0

    move v0, v1

    move-object v1, v5

    goto :goto_1

    :catch_2
    move-exception v1

    goto :goto_1
.end method

.method final a(Ljava/util/ArrayList;)Z
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/avira/android/blacklist/model/BLContact;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 753
    .line 756
    :try_start_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    move v3, v2

    :goto_0
    :try_start_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avira/android/blacklist/model/BLContact;

    .line 758
    iget-object v5, p0, Lcom/avira/android/blacklist/d/q;->a:Lcom/avira/android/blacklist/d/l;

    invoke-static {v5}, Lcom/avira/android/blacklist/d/l;->b(Lcom/avira/android/blacklist/d/l;)Lcom/avira/android/blacklist/d/p;

    move-result-object v5

    invoke-virtual {v0}, Lcom/avira/android/blacklist/model/BLContact;->b()Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {v5, v6, v7}, Lcom/avira/android/blacklist/d/p;->a(Lcom/avira/android/blacklist/d/p;J)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v3

    .line 760
    :try_start_2
    iget-object v5, p0, Lcom/avira/android/blacklist/d/q;->a:Lcom/avira/android/blacklist/d/l;

    invoke-static {v5}, Lcom/avira/android/blacklist/d/l;->a(Lcom/avira/android/blacklist/d/l;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    const-string v6, "blacklistTable"

    const-string v7, "contactId=?"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/avira/android/blacklist/d/q;->a:Lcom/avira/android/blacklist/d/l;

    invoke-static {v10}, Lcom/avira/android/blacklist/d/l;->c(Lcom/avira/android/blacklist/d/l;)Lcom/avira/android/database/h;

    move-result-object v10

    const-string v11, "contactId"

    invoke-virtual {v0}, Lcom/avira/android/blacklist/model/BLContact;->b()Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v11, v0}, Lcom/avira/android/database/h;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v8, v9

    invoke-virtual {v5, v6, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result v0

    if-lez v0, :cond_0

    move v0, v1

    :goto_1
    and-int/2addr v3, v0

    .line 765
    goto :goto_0

    :cond_0
    move v0, v2

    .line 760
    goto :goto_1

    .line 767
    :cond_1
    :try_start_3
    iget-object v0, p0, Lcom/avira/android/blacklist/d/q;->a:Lcom/avira/android/blacklist/d/l;

    const-string v1, "blacklistTable"

    invoke-static {v0, v1}, Lcom/avira/android/blacklist/d/l;->a(Lcom/avira/android/blacklist/d/l;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move v0, v3

    .line 773
    :goto_2
    return v0

    .line 769
    :catch_0
    move-exception v0

    move-object v1, v0

    move v0, v2

    .line 771
    :goto_3
    invoke-static {}, Lcom/avira/android/utilities/t;->b()Lcom/avira/android/utilities/t;

    move-result-object v2

    const-string v3, "BLDatabaseHelper.deleteContact"

    const-string v4, "Exception"

    invoke-virtual {v2, v3, v4, v1}, Lcom/avira/android/utilities/t;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 769
    :catch_1
    move-exception v0

    move-object v1, v0

    move v0, v3

    goto :goto_3

    :catch_2
    move-exception v0

    move-object v1, v0

    move v0, v3

    goto :goto_3
.end method
