.class public final Lcom/avira/android/blacklist/d/n;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final CREATE_TABLE:Ljava/lang/String; = "create table blacklistDataStore (contactNumber text not null, blockType text not null, ownerId text not null, contents text, viewed text not null, dateStamp text not null, timeStamp integer);"


# instance fields
.field final synthetic a:Lcom/avira/android/blacklist/d/l;

.field private final b:Lcom/avira/android/blacklist/d/s;


# direct methods
.method public constructor <init>(Lcom/avira/android/blacklist/d/l;)V
    .locals 2

    .prologue
    .line 138
    iput-object p1, p0, Lcom/avira/android/blacklist/d/n;->a:Lcom/avira/android/blacklist/d/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    invoke-static {}, Lcom/avira/android/database/h;->e()Lcom/avira/android/database/h;

    move-result-object v0

    const-string v1, "blacklistDataStore"

    invoke-virtual {v0, v1}, Lcom/avira/android/database/h;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 141
    invoke-static {p1}, Lcom/avira/android/blacklist/d/l;->a(Lcom/avira/android/blacklist/d/l;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "create table blacklistDataStore (contactNumber text not null, blockType text not null, ownerId text not null, contents text, viewed text not null, dateStamp text not null, timeStamp integer);"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 144
    :cond_0
    new-instance v0, Lcom/avira/android/blacklist/d/o;

    invoke-direct {v0, p0, p1}, Lcom/avira/android/blacklist/d/o;-><init>(Lcom/avira/android/blacklist/d/n;Lcom/avira/android/blacklist/d/l;)V

    iput-object v0, p0, Lcom/avira/android/blacklist/d/n;->b:Lcom/avira/android/blacklist/d/s;

    .line 156
    invoke-static {p1}, Lcom/avira/android/blacklist/d/l;->b(Lcom/avira/android/blacklist/d/l;)Lcom/avira/android/blacklist/d/p;

    move-result-object v0

    iget-object v1, p0, Lcom/avira/android/blacklist/d/n;->b:Lcom/avira/android/blacklist/d/s;

    invoke-virtual {v0, v1}, Lcom/avira/android/blacklist/d/p;->a(Lcom/avira/android/blacklist/d/s;)V

    .line 157
    return-void
.end method

.method private a(J)I
    .locals 9

    .prologue
    .line 238
    iget-object v0, p0, Lcom/avira/android/blacklist/d/n;->a:Lcom/avira/android/blacklist/d/l;

    invoke-static {v0}, Lcom/avira/android/blacklist/d/l;->a(Lcom/avira/android/blacklist/d/l;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "blacklistDataStore"

    const-string v2, "ownerId=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/avira/android/blacklist/d/n;->a:Lcom/avira/android/blacklist/d/l;

    invoke-static {v5}, Lcom/avira/android/blacklist/d/l;->c(Lcom/avira/android/blacklist/d/l;)Lcom/avira/android/database/h;

    move-result-object v5

    const-string v6, "ownerId"

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/avira/android/database/h;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/avira/android/blacklist/d/n;J)I
    .locals 1

    .prologue
    .line 125
    invoke-direct {p0, p1, p2}, Lcom/avira/android/blacklist/d/n;->a(J)I

    move-result v0

    return v0
.end method

.method private a(Landroid/database/Cursor;Lcom/avira/android/blacklist/b/f;Lcom/avira/android/blacklist/d/j;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "Lcom/avira/android/blacklist/b/f;",
            "Lcom/avira/android/blacklist/d/j;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/avira/android/blacklist/model/BLContactHistory;",
            ">;"
        }
    .end annotation

    .prologue
    .line 417
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 419
    if-eqz p1, :cond_3

    .line 421
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 423
    iget-object v0, p0, Lcom/avira/android/blacklist/d/n;->a:Lcom/avira/android/blacklist/d/l;

    invoke-static {v0}, Lcom/avira/android/blacklist/d/l;->c(Lcom/avira/android/blacklist/d/l;)Lcom/avira/android/database/h;

    move-result-object v0

    const-string v1, "blockType"

    const-string v2, "blockType"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/avira/android/database/h;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 426
    invoke-static {v0}, Lcom/avira/android/blacklist/d/j;->valueOf(Ljava/lang/String;)Lcom/avira/android/blacklist/d/j;

    move-result-object v8

    .line 428
    iget-object v0, p0, Lcom/avira/android/blacklist/d/n;->a:Lcom/avira/android/blacklist/d/l;

    invoke-static {v0}, Lcom/avira/android/blacklist/d/l;->c(Lcom/avira/android/blacklist/d/l;)Lcom/avira/android/database/h;

    move-result-object v0

    const-string v1, "ownerId"

    const-string v2, "ownerId"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/avira/android/database/h;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 431
    iget-object v0, p0, Lcom/avira/android/blacklist/d/n;->a:Lcom/avira/android/blacklist/d/l;

    invoke-static {v0}, Lcom/avira/android/blacklist/d/l;->c(Lcom/avira/android/blacklist/d/l;)Lcom/avira/android/database/h;

    move-result-object v0

    const-string v1, "contactNumber"

    const-string v3, "contactNumber"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/avira/android/database/h;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 435
    invoke-virtual {v7, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avira/android/blacklist/model/BLContactHistory;

    .line 436
    if-nez v0, :cond_4

    .line 438
    new-instance v1, Lcom/avira/android/blacklist/model/BLContactHistory;

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/avira/android/blacklist/model/BLContactHistory;-><init>(JLjava/lang/String;Lcom/avira/android/blacklist/b/f;Lcom/avira/android/blacklist/d/j;)V

    .line 440
    :goto_1
    iget-object v0, p0, Lcom/avira/android/blacklist/d/n;->a:Lcom/avira/android/blacklist/d/l;

    invoke-static {v0}, Lcom/avira/android/blacklist/d/l;->c(Lcom/avira/android/blacklist/d/l;)Lcom/avira/android/database/h;

    move-result-object v0

    const-string v2, "timeStamp"

    const-string v3, "timeStamp"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/avira/android/database/h;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 443
    iget-object v0, p0, Lcom/avira/android/blacklist/d/n;->a:Lcom/avira/android/blacklist/d/l;

    invoke-static {v0}, Lcom/avira/android/blacklist/d/l;->c(Lcom/avira/android/blacklist/d/l;)Lcom/avira/android/database/h;

    move-result-object v0

    const-string v5, "viewed"

    const-string v6, "viewed"

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Lcom/avira/android/database/h;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 445
    const/4 v0, 0x0

    .line 446
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 448
    const-string v0, "1"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 450
    :cond_0
    sget-object v5, Lcom/avira/android/blacklist/d/j;->CALL:Lcom/avira/android/blacklist/d/j;

    if-ne v8, v5, :cond_1

    .line 452
    invoke-virtual {v1, v2, v3, v0}, Lcom/avira/android/blacklist/model/BLContactHistory;->a(JZ)V

    .line 461
    :goto_2
    invoke-virtual {v7, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 456
    :cond_1
    iget-object v5, p0, Lcom/avira/android/blacklist/d/n;->a:Lcom/avira/android/blacklist/d/l;

    invoke-static {v5}, Lcom/avira/android/blacklist/d/l;->c(Lcom/avira/android/blacklist/d/l;)Lcom/avira/android/database/h;

    move-result-object v5

    const-string v6, "contents"

    const-string v8, "contents"

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v6, v8}, Lcom/avira/android/database/h;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 458
    invoke-virtual {v1, v2, v3, v0, v5}, Lcom/avira/android/blacklist/model/BLContactHistory;->a(JZLjava/lang/String;)V

    goto :goto_2

    .line 464
    :cond_2
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 467
    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0

    :cond_4
    move-object v1, v0

    goto :goto_1
.end method


# virtual methods
.method public final a()I
    .locals 4

    .prologue
    .line 263
    :try_start_0
    iget-object v0, p0, Lcom/avira/android/blacklist/d/n;->a:Lcom/avira/android/blacklist/d/l;

    invoke-static {v0}, Lcom/avira/android/blacklist/d/l;->a(Lcom/avira/android/blacklist/d/l;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "blacklistDataStore"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 267
    iget-object v1, p0, Lcom/avira/android/blacklist/d/n;->a:Lcom/avira/android/blacklist/d/l;

    const-string v2, "blacklistDataStore"

    invoke-static {v1, v2}, Lcom/avira/android/blacklist/d/l;->a(Lcom/avira/android/blacklist/d/l;Ljava/lang/String;)V

    .line 263
    return v0

    .line 267
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/avira/android/blacklist/d/n;->a:Lcom/avira/android/blacklist/d/l;

    const-string v2, "blacklistDataStore"

    invoke-static {v1, v2}, Lcom/avira/android/blacklist/d/l;->a(Lcom/avira/android/blacklist/d/l;Ljava/lang/String;)V

    throw v0
.end method

.method public final a(Lcom/avira/android/blacklist/d/j;)I
    .locals 10

    .prologue
    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 302
    .line 305
    const-string v0, ""

    .line 306
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 309
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "viewed=?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 310
    iget-object v0, p0, Lcom/avira/android/blacklist/d/n;->a:Lcom/avira/android/blacklist/d/l;

    invoke-static {v0}, Lcom/avira/android/blacklist/d/l;->c(Lcom/avira/android/blacklist/d/l;)Lcom/avira/android/database/h;

    move-result-object v0

    const-string v1, "viewed"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Lcom/avira/android/database/h;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 312
    sget-object v0, Lcom/avira/android/blacklist/d/j;->BOTH:Lcom/avira/android/blacklist/d/j;

    if-eq p1, v0, :cond_0

    .line 314
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND blockType=?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 315
    iget-object v0, p0, Lcom/avira/android/blacklist/d/n;->a:Lcom/avira/android/blacklist/d/l;

    invoke-static {v0}, Lcom/avira/android/blacklist/d/l;->c(Lcom/avira/android/blacklist/d/l;)Lcom/avira/android/database/h;

    move-result-object v0

    const-string v1, "blockType"

    invoke-virtual {p1}, Lcom/avira/android/blacklist/d/j;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/avira/android/database/h;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 320
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/avira/android/blacklist/d/n;->a:Lcom/avira/android/blacklist/d/l;

    invoke-static {v0}, Lcom/avira/android/blacklist/d/l;->a(Lcom/avira/android/blacklist/d/l;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "blacklistDataStore"

    const/4 v2, 0x0

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move-object v1, v0

    .line 327
    :goto_0
    if-eqz v1, :cond_1

    .line 329
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 330
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 332
    :goto_1
    return v0

    .line 323
    :catch_0
    move-exception v0

    .line 325
    invoke-static {}, Lcom/avira/android/utilities/t;->b()Lcom/avira/android/utilities/t;

    move-result-object v1

    const-string v2, "BLDatabaseHelper.getHistory"

    const-string v3, "Exception"

    invoke-virtual {v1, v2, v3, v0}, Lcom/avira/android/utilities/t;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v1, v9

    goto :goto_0

    :cond_1
    move v0, v8

    goto :goto_1
.end method

.method public final a(Ljava/util/List;)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/avira/android/blacklist/model/BLContact;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 205
    const/4 v0, 0x0

    .line 206
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avira/android/blacklist/model/BLContact;

    .line 208
    invoke-virtual {v0}, Lcom/avira/android/blacklist/model/BLContact;->b()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-direct {p0, v4, v5}, Lcom/avira/android/blacklist/d/n;->a(J)I

    move-result v0

    add-int/2addr v0, v1

    move v1, v0

    .line 209
    goto :goto_0

    .line 210
    :cond_0
    iget-object v0, p0, Lcom/avira/android/blacklist/d/n;->a:Lcom/avira/android/blacklist/d/l;

    const-string v2, "blacklistDataStore"

    invoke-static {v0, v2}, Lcom/avira/android/blacklist/d/l;->a(Lcom/avira/android/blacklist/d/l;Ljava/lang/String;)V

    .line 211
    return v1
.end method

.method public final a(Ljava/util/List;Lcom/avira/android/blacklist/d/j;)I
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/avira/android/blacklist/model/BLContact;",
            ">;",
            "Lcom/avira/android/blacklist/d/j;",
            ")I"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 216
    .line 217
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v2

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avira/android/blacklist/model/BLContact;

    .line 219
    invoke-virtual {v0}, Lcom/avira/android/blacklist/model/BLContact;->b()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iget-object v0, p0, Lcom/avira/android/blacklist/d/n;->a:Lcom/avira/android/blacklist/d/l;

    invoke-static {v0}, Lcom/avira/android/blacklist/d/l;->a(Lcom/avira/android/blacklist/d/l;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v6, "blacklistDataStore"

    const-string v7, "ownerId=? AND blockType=?"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/String;

    iget-object v9, p0, Lcom/avira/android/blacklist/d/n;->a:Lcom/avira/android/blacklist/d/l;

    invoke-static {v9}, Lcom/avira/android/blacklist/d/l;->c(Lcom/avira/android/blacklist/d/l;)Lcom/avira/android/database/h;

    move-result-object v9

    const-string v10, "ownerId"

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v10, v4}, Lcom/avira/android/database/h;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v8, v2

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/avira/android/blacklist/d/n;->a:Lcom/avira/android/blacklist/d/l;

    invoke-static {v5}, Lcom/avira/android/blacklist/d/l;->c(Lcom/avira/android/blacklist/d/l;)Lcom/avira/android/database/h;

    move-result-object v5

    const-string v9, "blockType"

    invoke-virtual {p2}, Lcom/avira/android/blacklist/d/j;->name()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v9, v10}, Lcom/avira/android/database/h;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v8, v4

    invoke-virtual {v0, v6, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    add-int/2addr v0, v1

    move v1, v0

    .line 220
    goto :goto_0

    .line 221
    :cond_0
    iget-object v0, p0, Lcom/avira/android/blacklist/d/n;->a:Lcom/avira/android/blacklist/d/l;

    const-string v2, "blacklistDataStore"

    invoke-static {v0, v2}, Lcom/avira/android/blacklist/d/l;->a(Lcom/avira/android/blacklist/d/l;Ljava/lang/String;)V

    .line 222
    return v1
.end method

.method public final a(Lcom/avira/android/blacklist/model/BLContactHistory;Lcom/avira/android/blacklist/b/f;Lcom/avira/android/blacklist/d/j;)Lcom/avira/android/blacklist/model/BLContactHistory;
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 338
    .line 340
    const-string v0, "ownerId=?"

    .line 341
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 342
    iget-object v1, p0, Lcom/avira/android/blacklist/d/n;->a:Lcom/avira/android/blacklist/d/l;

    invoke-static {v1}, Lcom/avira/android/blacklist/d/l;->c(Lcom/avira/android/blacklist/d/l;)Lcom/avira/android/database/h;

    move-result-object v1

    const-string v2, "ownerId"

    invoke-virtual {p1}, Lcom/avira/android/blacklist/model/BLContactHistory;->a()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/avira/android/database/h;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 345
    sget-object v1, Lcom/avira/android/blacklist/d/m;->$SwitchMap$com$avira$android$blacklist$fragments$BLHistoryTabFragment$FilterOption:[I

    invoke-virtual {p2}, Lcom/avira/android/blacklist/b/f;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 357
    :goto_0
    sget-object v1, Lcom/avira/android/blacklist/d/j;->BOTH:Lcom/avira/android/blacklist/d/j;

    if-eq p3, v1, :cond_4

    .line 364
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 366
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 368
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "blockType=?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 369
    iget-object v0, p0, Lcom/avira/android/blacklist/d/n;->a:Lcom/avira/android/blacklist/d/l;

    invoke-static {v0}, Lcom/avira/android/blacklist/d/l;->c(Lcom/avira/android/blacklist/d/l;)Lcom/avira/android/database/h;

    move-result-object v0

    const-string v1, "blockType"

    invoke-virtual {p3}, Lcom/avira/android/blacklist/d/j;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/avira/android/database/h;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 374
    :goto_1
    :try_start_0
    iget-object v0, p0, Lcom/avira/android/blacklist/d/n;->a:Lcom/avira/android/blacklist/d/l;

    invoke-static {v0}, Lcom/avira/android/blacklist/d/l;->a(Lcom/avira/android/blacklist/d/l;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "blacklistDataStore"

    const/4 v2, 0x0

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 376
    if-eqz v1, :cond_1

    .line 378
    :goto_2
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 380
    iget-object v0, p0, Lcom/avira/android/blacklist/d/n;->a:Lcom/avira/android/blacklist/d/l;

    invoke-static {v0}, Lcom/avira/android/blacklist/d/l;->c(Lcom/avira/android/blacklist/d/l;)Lcom/avira/android/database/h;

    move-result-object v0

    const-string v2, "blockType"

    const-string v3, "blockType"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/avira/android/database/h;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 382
    invoke-static {v0}, Lcom/avira/android/blacklist/d/j;->valueOf(Ljava/lang/String;)Lcom/avira/android/blacklist/d/j;

    move-result-object v0

    .line 384
    iget-object v2, p0, Lcom/avira/android/blacklist/d/n;->a:Lcom/avira/android/blacklist/d/l;

    invoke-static {v2}, Lcom/avira/android/blacklist/d/l;->c(Lcom/avira/android/blacklist/d/l;)Lcom/avira/android/database/h;

    move-result-object v2

    const-string v3, "timeStamp"

    const-string v4, "timeStamp"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/avira/android/database/h;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 387
    iget-object v4, p0, Lcom/avira/android/blacklist/d/n;->a:Lcom/avira/android/blacklist/d/l;

    invoke-static {v4}, Lcom/avira/android/blacklist/d/l;->c(Lcom/avira/android/blacklist/d/l;)Lcom/avira/android/database/h;

    move-result-object v4

    const-string v5, "viewed"

    const-string v6, "viewed"

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/avira/android/database/h;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    .line 389
    sget-object v5, Lcom/avira/android/blacklist/d/j;->CALL:Lcom/avira/android/blacklist/d/j;

    if-ne v0, v5, :cond_3

    .line 391
    invoke-virtual {p1, v2, v3, v4}, Lcom/avira/android/blacklist/model/BLContactHistory;->a(JZ)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 402
    :catch_0
    move-exception v0

    .line 404
    :goto_3
    invoke-static {}, Lcom/avira/android/utilities/t;->b()Lcom/avira/android/utilities/t;

    move-result-object v2

    const-string v3, "BLDatabaseHelper.getHistory"

    const-string v4, "Exception"

    invoke-virtual {v2, v3, v4, v0}, Lcom/avira/android/utilities/t;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 406
    :cond_1
    if-eqz v1, :cond_2

    .line 408
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 411
    :cond_2
    return-object p1

    .line 348
    :pswitch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND dateStamp=?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 349
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 350
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "dd-MMM-yyyy"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-direct {v2, v3, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 351
    iget-object v3, p0, Lcom/avira/android/blacklist/d/n;->a:Lcom/avira/android/blacklist/d/l;

    invoke-static {v3}, Lcom/avira/android/blacklist/d/l;->c(Lcom/avira/android/blacklist/d/l;)Lcom/avira/android/database/h;

    move-result-object v3

    const-string v5, "dateStamp"

    invoke-virtual {v2, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v5, v1}, Lcom/avira/android/database/h;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 354
    :pswitch_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND viewed=?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 355
    iget-object v1, p0, Lcom/avira/android/blacklist/d/n;->a:Lcom/avira/android/blacklist/d/l;

    invoke-static {v1}, Lcom/avira/android/blacklist/d/l;->c(Lcom/avira/android/blacklist/d/l;)Lcom/avira/android/database/h;

    move-result-object v1

    const-string v2, "viewed"

    const-string v3, "0"

    invoke-virtual {v1, v2, v3}, Lcom/avira/android/database/h;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 395
    :cond_3
    :try_start_2
    iget-object v0, p0, Lcom/avira/android/blacklist/d/n;->a:Lcom/avira/android/blacklist/d/l;

    invoke-static {v0}, Lcom/avira/android/blacklist/d/l;->c(Lcom/avira/android/blacklist/d/l;)Lcom/avira/android/database/h;

    move-result-object v0

    const-string v5, "contents"

    const-string v6, "contents"

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Lcom/avira/android/database/h;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 397
    invoke-virtual {p1, v2, v3, v4, v0}, Lcom/avira/android/blacklist/model/BLContactHistory;->a(JZLjava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_2

    .line 402
    :catch_1
    move-exception v0

    move-object v1, v8

    goto/16 :goto_3

    :cond_4
    move-object v3, v0

    goto/16 :goto_1

    .line 345
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final a(Lcom/avira/android/blacklist/b/f;Lcom/avira/android/blacklist/d/j;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/avira/android/blacklist/b/f;",
            "Lcom/avira/android/blacklist/d/j;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/avira/android/blacklist/model/BLContactHistory;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 514
    .line 517
    const-string v0, ""

    .line 518
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 519
    sget-object v1, Lcom/avira/android/blacklist/d/m;->$SwitchMap$com$avira$android$blacklist$fragments$BLHistoryTabFragment$FilterOption:[I

    invoke-virtual {p1}, Lcom/avira/android/blacklist/b/f;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 531
    :goto_0
    sget-object v1, Lcom/avira/android/blacklist/d/j;->BOTH:Lcom/avira/android/blacklist/d/j;

    if-eq p2, v1, :cond_2

    .line 538
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 540
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 542
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "blockType=?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 543
    iget-object v0, p0, Lcom/avira/android/blacklist/d/n;->a:Lcom/avira/android/blacklist/d/l;

    invoke-static {v0}, Lcom/avira/android/blacklist/d/l;->c(Lcom/avira/android/blacklist/d/l;)Lcom/avira/android/database/h;

    move-result-object v0

    const-string v1, "blockType"

    invoke-virtual {p2}, Lcom/avira/android/blacklist/d/j;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/avira/android/database/h;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 548
    :goto_1
    :try_start_0
    iget-object v0, p0, Lcom/avira/android/blacklist/d/n;->a:Lcom/avira/android/blacklist/d/l;

    invoke-static {v0}, Lcom/avira/android/blacklist/d/l;->a(Lcom/avira/android/blacklist/d/l;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "blacklistDataStore"

    const/4 v2, 0x0

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move-object v1, v0

    .line 555
    :goto_2
    if-eqz v1, :cond_1

    .line 557
    invoke-direct {p0, v1, p1, p2}, Lcom/avira/android/blacklist/d/n;->a(Landroid/database/Cursor;Lcom/avira/android/blacklist/b/f;Lcom/avira/android/blacklist/d/j;)Ljava/util/List;

    move-result-object v0

    .line 558
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 560
    :goto_3
    return-object v0

    .line 522
    :pswitch_0
    const-string v0, "dateStamp=?"

    .line 523
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 524
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "dd-MMM-yyyy"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-direct {v2, v3, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 525
    iget-object v3, p0, Lcom/avira/android/blacklist/d/n;->a:Lcom/avira/android/blacklist/d/l;

    invoke-static {v3}, Lcom/avira/android/blacklist/d/l;->c(Lcom/avira/android/blacklist/d/l;)Lcom/avira/android/database/h;

    move-result-object v3

    const-string v5, "dateStamp"

    invoke-virtual {v2, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v5, v1}, Lcom/avira/android/database/h;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 528
    :pswitch_1
    const-string v0, "viewed=?"

    .line 529
    iget-object v1, p0, Lcom/avira/android/blacklist/d/n;->a:Lcom/avira/android/blacklist/d/l;

    invoke-static {v1}, Lcom/avira/android/blacklist/d/l;->c(Lcom/avira/android/blacklist/d/l;)Lcom/avira/android/database/h;

    move-result-object v1

    const-string v2, "viewed"

    const-string v3, "0"

    invoke-virtual {v1, v2, v3}, Lcom/avira/android/database/h;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 551
    :catch_0
    move-exception v0

    .line 553
    invoke-static {}, Lcom/avira/android/utilities/t;->b()Lcom/avira/android/utilities/t;

    move-result-object v1

    const-string v2, "BLDatabaseHelper.getHistory"

    const-string v3, "Exception"

    invoke-virtual {v1, v2, v3, v0}, Lcom/avira/android/utilities/t;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v1, v8

    goto :goto_2

    :cond_1
    move-object v0, v8

    goto :goto_3

    :cond_2
    move-object v3, v0

    goto :goto_1

    .line 519
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final a(Ljava/lang/String;Lcom/avira/android/blacklist/d/j;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/avira/android/blacklist/d/j;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/avira/android/blacklist/model/BLContactHistory;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 482
    .line 485
    const-string v3, "contactNumber=?"

    .line 486
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 487
    iget-object v0, p0, Lcom/avira/android/blacklist/d/n;->a:Lcom/avira/android/blacklist/d/l;

    invoke-static {v0}, Lcom/avira/android/blacklist/d/l;->c(Lcom/avira/android/blacklist/d/l;)Lcom/avira/android/database/h;

    move-result-object v0

    const-string v1, "contactNumber"

    invoke-virtual {v0, v1, p1}, Lcom/avira/android/database/h;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 489
    sget-object v0, Lcom/avira/android/blacklist/d/j;->BOTH:Lcom/avira/android/blacklist/d/j;

    if-eq p2, v0, :cond_0

    .line 491
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND blockType=?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 492
    iget-object v0, p0, Lcom/avira/android/blacklist/d/n;->a:Lcom/avira/android/blacklist/d/l;

    invoke-static {v0}, Lcom/avira/android/blacklist/d/l;->c(Lcom/avira/android/blacklist/d/l;)Lcom/avira/android/database/h;

    move-result-object v0

    const-string v1, "blockType"

    invoke-virtual {p2}, Lcom/avira/android/blacklist/d/j;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/avira/android/database/h;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 497
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/avira/android/blacklist/d/n;->a:Lcom/avira/android/blacklist/d/l;

    invoke-static {v0}, Lcom/avira/android/blacklist/d/l;->a(Lcom/avira/android/blacklist/d/l;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "blacklistDataStore"

    const/4 v2, 0x0

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move-object v1, v0

    .line 504
    :goto_0
    if-eqz v1, :cond_1

    .line 506
    sget-object v0, Lcom/avira/android/blacklist/b/f;->ALL:Lcom/avira/android/blacklist/b/f;

    invoke-direct {p0, v1, v0, p2}, Lcom/avira/android/blacklist/d/n;->a(Landroid/database/Cursor;Lcom/avira/android/blacklist/b/f;Lcom/avira/android/blacklist/d/j;)Ljava/util/List;

    move-result-object v0

    .line 507
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 509
    :goto_1
    return-object v0

    .line 500
    :catch_0
    move-exception v0

    .line 502
    invoke-static {}, Lcom/avira/android/utilities/t;->b()Lcom/avira/android/utilities/t;

    move-result-object v1

    const-string v2, "BLDatabaseHelper.getHistory"

    const-string v3, "Exception"

    invoke-virtual {v1, v2, v3, v0}, Lcom/avira/android/utilities/t;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v1, v8

    goto :goto_0

    :cond_1
    move-object v0, v8

    goto :goto_1
.end method

.method public final a(JLcom/avira/android/blacklist/d/j;)V
    .locals 7

    .prologue
    .line 273
    new-instance v2, Lcom/avira/android/database/e;

    invoke-direct {v2}, Lcom/avira/android/database/e;-><init>()V

    .line 274
    const-string v0, "viewed"

    const-string v1, "1"

    invoke-virtual {v2, v0, v1}, Lcom/avira/android/database/e;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/avira/android/database/e;

    .line 276
    const-string v0, "ownerId=?"

    .line 277
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND viewed=?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 278
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 279
    iget-object v1, p0, Lcom/avira/android/blacklist/d/n;->a:Lcom/avira/android/blacklist/d/l;

    invoke-static {v1}, Lcom/avira/android/blacklist/d/l;->c(Lcom/avira/android/blacklist/d/l;)Lcom/avira/android/database/h;

    move-result-object v1

    const-string v4, "ownerId"

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lcom/avira/android/database/h;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 280
    iget-object v1, p0, Lcom/avira/android/blacklist/d/n;->a:Lcom/avira/android/blacklist/d/l;

    invoke-static {v1}, Lcom/avira/android/blacklist/d/l;->c(Lcom/avira/android/blacklist/d/l;)Lcom/avira/android/database/h;

    move-result-object v1

    const-string v4, "viewed"

    const-string v5, "0"

    invoke-virtual {v1, v4, v5}, Lcom/avira/android/database/h;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 282
    sget-object v1, Lcom/avira/android/blacklist/d/j;->BOTH:Lcom/avira/android/blacklist/d/j;

    if-eq p3, v1, :cond_0

    .line 284
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND blockType=?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 285
    iget-object v1, p0, Lcom/avira/android/blacklist/d/n;->a:Lcom/avira/android/blacklist/d/l;

    invoke-static {v1}, Lcom/avira/android/blacklist/d/l;->c(Lcom/avira/android/blacklist/d/l;)Lcom/avira/android/database/h;

    move-result-object v1

    const-string v4, "blockType"

    invoke-virtual {p3}, Lcom/avira/android/blacklist/d/j;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lcom/avira/android/database/h;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    move-object v1, v0

    .line 288
    iget-object v0, p0, Lcom/avira/android/blacklist/d/n;->a:Lcom/avira/android/blacklist/d/l;

    invoke-static {v0}, Lcom/avira/android/blacklist/d/l;->a(Lcom/avira/android/blacklist/d/l;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    const-string v5, "blacklistDataStore"

    invoke-virtual {v2}, Lcom/avira/android/database/e;->a()Landroid/content/ContentValues;

    move-result-object v2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {v4, v5, v2, v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 294
    if-lez v0, :cond_1

    .line 296
    iget-object v0, p0, Lcom/avira/android/blacklist/d/n;->a:Lcom/avira/android/blacklist/d/l;

    const-string v1, "blacklistDataStore"

    invoke-static {v0, v1}, Lcom/avira/android/blacklist/d/l;->a(Lcom/avira/android/blacklist/d/l;Ljava/lang/String;)V

    .line 298
    :cond_1
    return-void
.end method

.method public final a(Lcom/avira/android/blacklist/model/BLContact;Lcom/avira/android/blacklist/d/j;Ljava/lang/String;)Z
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 168
    .line 169
    sget-object v1, Lcom/avira/android/blacklist/d/j;->NONE:Lcom/avira/android/blacklist/d/j;

    if-ne p2, v1, :cond_0

    .line 171
    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v1, "Does not support BlacklistOption.NONE"

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 173
    :cond_0
    sget-object v1, Lcom/avira/android/blacklist/d/j;->CALL:Lcom/avira/android/blacklist/d/j;

    if-ne p2, v1, :cond_1

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 175
    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v1, "Call cannot have message content"

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 177
    :cond_1
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 178
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "dd-MMM-yyyy"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 179
    invoke-virtual {v2, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 183
    :try_start_0
    new-instance v3, Lcom/avira/android/database/e;

    invoke-direct {v3}, Lcom/avira/android/database/e;-><init>()V

    .line 184
    const-string v4, "contactNumber"

    invoke-virtual {p1}, Lcom/avira/android/blacklist/model/BLContact;->d()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/avira/android/database/e;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/avira/android/database/e;

    .line 185
    const-string v4, "ownerId"

    invoke-virtual {p1}, Lcom/avira/android/blacklist/model/BLContact;->b()Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v3, v4, v6, v7}, Lcom/avira/android/database/e;->a(Ljava/lang/String;J)Lcom/avira/android/database/e;

    .line 186
    const-string v4, "blockType"

    invoke-virtual {p2}, Lcom/avira/android/blacklist/d/j;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/avira/android/database/e;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/avira/android/database/e;

    .line 187
    const-string v4, "dateStamp"

    invoke-virtual {v3, v4, v2}, Lcom/avira/android/database/e;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/avira/android/database/e;

    .line 188
    const-string v2, "timeStamp"

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-virtual {v3, v2, v4, v5}, Lcom/avira/android/database/e;->a(Ljava/lang/String;J)Lcom/avira/android/database/e;

    .line 189
    const-string v1, "contents"

    invoke-virtual {v3, v1, p3}, Lcom/avira/android/database/e;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/avira/android/database/e;

    .line 190
    const-string v1, "viewed"

    const-string v2, "0"

    invoke-virtual {v3, v1, v2}, Lcom/avira/android/database/e;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/avira/android/database/e;

    .line 192
    iget-object v1, p0, Lcom/avira/android/blacklist/d/n;->a:Lcom/avira/android/blacklist/d/l;

    invoke-static {v1}, Lcom/avira/android/blacklist/d/l;->a(Lcom/avira/android/blacklist/d/l;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v2, "blacklistDataStore"

    const/4 v4, 0x0

    invoke-virtual {v3}, Lcom/avira/android/database/e;->a()Landroid/content/ContentValues;

    move-result-object v3

    invoke-virtual {v1, v2, v4, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_2

    const/4 v0, 0x1

    .line 199
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/avira/android/blacklist/d/n;->a:Lcom/avira/android/blacklist/d/l;

    const-string v2, "blacklistDataStore"

    invoke-static {v1, v2}, Lcom/avira/android/blacklist/d/l;->a(Lcom/avira/android/blacklist/d/l;Ljava/lang/String;)V

    .line 200
    return v0

    .line 194
    :catch_0
    move-exception v1

    .line 196
    invoke-static {}, Lcom/avira/android/utilities/t;->b()Lcom/avira/android/utilities/t;

    move-result-object v2

    const-string v3, "BLDatabaseHelper.addContact"

    const-string v4, "Exception"

    invoke-virtual {v2, v3, v4, v1}, Lcom/avira/android/utilities/t;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final b(Ljava/util/List;)I
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/avira/android/blacklist/model/BLHistoryItem;",
            ">;)I"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 227
    .line 228
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v2

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avira/android/blacklist/model/BLHistoryItem;

    .line 230
    invoke-virtual {v0}, Lcom/avira/android/blacklist/model/BLHistoryItem;->e()J

    move-result-wide v4

    invoke-virtual {v0}, Lcom/avira/android/blacklist/model/BLHistoryItem;->b()J

    move-result-wide v6

    iget-object v0, p0, Lcom/avira/android/blacklist/d/n;->a:Lcom/avira/android/blacklist/d/l;

    invoke-static {v0}, Lcom/avira/android/blacklist/d/l;->c(Lcom/avira/android/blacklist/d/l;)Lcom/avira/android/database/h;

    move-result-object v0

    const-string v8, "ownerId"

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v8, v4}, Lcom/avira/android/database/h;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lcom/avira/android/blacklist/d/n;->a:Lcom/avira/android/blacklist/d/l;

    invoke-static {v4}, Lcom/avira/android/blacklist/d/l;->c(Lcom/avira/android/blacklist/d/l;)Lcom/avira/android/database/h;

    move-result-object v4

    const-string v5, "timeStamp"

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/avira/android/database/h;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/avira/android/blacklist/d/n;->a:Lcom/avira/android/blacklist/d/l;

    invoke-static {v5}, Lcom/avira/android/blacklist/d/l;->a(Lcom/avira/android/blacklist/d/l;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    const-string v6, "blacklistDataStore"

    const-string v7, "ownerId=? AND timeStamp=?"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/String;

    aput-object v0, v8, v2

    const/4 v0, 0x1

    aput-object v4, v8, v0

    invoke-virtual {v5, v6, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    add-int/2addr v0, v1

    move v1, v0

    .line 231
    goto :goto_0

    .line 232
    :cond_0
    iget-object v0, p0, Lcom/avira/android/blacklist/d/n;->a:Lcom/avira/android/blacklist/d/l;

    const-string v2, "blacklistDataStore"

    invoke-static {v0, v2}, Lcom/avira/android/blacklist/d/l;->a(Lcom/avira/android/blacklist/d/l;Ljava/lang/String;)V

    .line 233
    return v1
.end method

.method public final b()J
    .locals 2

    .prologue
    .line 477
    iget-object v0, p0, Lcom/avira/android/blacklist/d/n;->a:Lcom/avira/android/blacklist/d/l;

    invoke-static {v0}, Lcom/avira/android/blacklist/d/l;->a(Lcom/avira/android/blacklist/d/l;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "blacklistDataStore"

    invoke-static {v0, v1}, Landroid/database/DatabaseUtils;->queryNumEntries(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method protected final finalize()V
    .locals 2

    .prologue
    .line 162
    iget-object v0, p0, Lcom/avira/android/blacklist/d/n;->a:Lcom/avira/android/blacklist/d/l;

    invoke-static {v0}, Lcom/avira/android/blacklist/d/l;->b(Lcom/avira/android/blacklist/d/l;)Lcom/avira/android/blacklist/d/p;

    move-result-object v0

    iget-object v1, p0, Lcom/avira/android/blacklist/d/n;->b:Lcom/avira/android/blacklist/d/s;

    invoke-virtual {v0, v1}, Lcom/avira/android/blacklist/d/p;->b(Lcom/avira/android/blacklist/d/s;)V

    .line 163
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 164
    return-void
.end method
