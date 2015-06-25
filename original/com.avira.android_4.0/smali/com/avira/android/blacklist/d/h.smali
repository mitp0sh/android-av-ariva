.class public final Lcom/avira/android/blacklist/d/h;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final PHONE_NUMBER_PREFIX:Ljava/lang/String; = "+"

.field private static final PHONE_NUMBER_PREFIX_DIGIT:Ljava/lang/String; = "00"


# instance fields
.field private final a:Lcom/avira/android/blacklist/d/s;

.field private final b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/avira/android/blacklist/model/BLContact;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/avira/android/blacklist/d/h;->b:Ljava/util/HashMap;

    .line 32
    new-instance v0, Lcom/avira/android/blacklist/d/i;

    invoke-direct {v0, p0}, Lcom/avira/android/blacklist/d/i;-><init>(Lcom/avira/android/blacklist/d/h;)V

    iput-object v0, p0, Lcom/avira/android/blacklist/d/h;->a:Lcom/avira/android/blacklist/d/s;

    .line 41
    invoke-static {}, Lcom/avira/android/blacklist/d/l;->a()Lcom/avira/android/blacklist/d/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avira/android/blacklist/d/l;->c()Lcom/avira/android/blacklist/d/p;

    move-result-object v0

    iget-object v1, p0, Lcom/avira/android/blacklist/d/h;->a:Lcom/avira/android/blacklist/d/s;

    invoke-virtual {v0, v1}, Lcom/avira/android/blacklist/d/p;->a(Lcom/avira/android/blacklist/d/s;)V

    .line 42
    return-void
.end method

.method static synthetic a(Lcom/avira/android/blacklist/d/h;)Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/avira/android/blacklist/d/h;->b:Ljava/util/HashMap;

    return-object v0
.end method

.method public static a(JLjava/lang/String;Ljava/lang/String;Lcom/avira/android/blacklist/d/j;)V
    .locals 8

    .prologue
    .line 134
    invoke-static {}, Lcom/avira/android/blacklist/d/f;->a()Lcom/avira/android/blacklist/d/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avira/android/blacklist/d/f;->b()Lcom/avira/android/blacklist/d/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avira/android/blacklist/d/l;->b()Lcom/avira/android/blacklist/d/q;

    move-result-object v1

    move-wide v2, p0

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-virtual/range {v1 .. v6}, Lcom/avira/android/blacklist/d/q;->a(JLjava/lang/String;Ljava/lang/String;Lcom/avira/android/blacklist/d/j;)Z

    .line 136
    return-void
.end method

.method private b(JLjava/lang/String;Ljava/lang/String;Lcom/avira/android/blacklist/d/j;)Lcom/avira/android/blacklist/model/BLContact;
    .locals 5

    .prologue
    .line 157
    iget-object v0, p0, Lcom/avira/android/blacklist/d/h;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avira/android/blacklist/model/BLContact;

    .line 158
    if-nez v0, :cond_1

    .line 160
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object p3, p4

    .line 165
    :cond_0
    const-wide/16 v0, -0x2

    cmp-long v0, p1, v0

    if-nez v0, :cond_2

    .line 167
    new-instance v0, Lcom/avira/android/blacklist/model/BLContact;

    invoke-static {}, Lcom/avira/android/blacklist/d/f;->a()Lcom/avira/android/blacklist/d/f;

    move-result-object v1

    invoke-virtual {v1}, Lcom/avira/android/blacklist/d/f;->b()Lcom/avira/android/blacklist/d/l;

    move-result-object v1

    invoke-virtual {v1}, Lcom/avira/android/blacklist/d/l;->b()Lcom/avira/android/blacklist/d/q;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/avira/android/blacklist/d/q;->a(Ljava/lang/String;)J

    move-result-wide v2

    invoke-direct {v0, p3, v2, v3}, Lcom/avira/android/blacklist/model/BLContact;-><init>(Ljava/lang/String;J)V

    .line 175
    :cond_1
    :goto_0
    invoke-virtual {v0, p4, p5}, Lcom/avira/android/blacklist/model/BLContact;->a(Ljava/lang/String;Lcom/avira/android/blacklist/d/j;)V

    .line 176
    iget-object v1, p0, Lcom/avira/android/blacklist/d/h;->b:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/avira/android/blacklist/model/BLContact;->b()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    return-object v0

    .line 172
    :cond_2
    new-instance v0, Lcom/avira/android/blacklist/model/BLContact;

    invoke-direct {v0, p3, p1, p2}, Lcom/avira/android/blacklist/model/BLContact;-><init>(Ljava/lang/String;J)V

    goto :goto_0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;Lcom/avira/android/blacklist/model/BLContact;)Lcom/avira/android/blacklist/d/k;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 268
    new-instance v2, Lcom/avira/android/blacklist/d/k;

    invoke-direct {v2, p0}, Lcom/avira/android/blacklist/d/k;-><init>(Lcom/avira/android/blacklist/d/h;)V

    .line 270
    invoke-virtual {p0, p2}, Lcom/avira/android/blacklist/d/h;->a(Ljava/lang/String;)Lcom/avira/android/blacklist/model/BLContact;

    move-result-object v0

    .line 271
    if-eqz v0, :cond_0

    .line 273
    if-eqz p3, :cond_0

    invoke-virtual {v0}, Lcom/avira/android/blacklist/model/BLContact;->b()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {p3}, Lcom/avira/android/blacklist/model/BLContact;->b()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v0, v1

    .line 279
    :cond_0
    if-eqz v0, :cond_4

    .line 281
    invoke-virtual {v0}, Lcom/avira/android/blacklist/model/BLContact;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 283
    invoke-virtual {v2, v0}, Lcom/avira/android/blacklist/d/k;->a(Lcom/avira/android/blacklist/model/BLContact;)V

    .line 308
    :cond_1
    :goto_0
    return-object v2

    .line 287
    :cond_2
    if-eqz p3, :cond_3

    if-eqz p3, :cond_1

    invoke-virtual {v0}, Lcom/avira/android/blacklist/model/BLContact;->b()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p3}, Lcom/avira/android/blacklist/model/BLContact;->b()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 290
    :cond_3
    invoke-static {v2}, Lcom/avira/android/blacklist/d/k;->a(Lcom/avira/android/blacklist/d/k;)V

    .line 291
    invoke-virtual {v2, v0}, Lcom/avira/android/blacklist/d/k;->a(Lcom/avira/android/blacklist/model/BLContact;)V

    goto :goto_0

    .line 297
    :cond_4
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/avira/android/blacklist/d/h;->b:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avira/android/blacklist/model/BLContact;

    invoke-virtual {v0}, Lcom/avira/android/blacklist/model/BLContact;->e()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 298
    :goto_1
    if-eqz v0, :cond_1

    .line 300
    if-eqz p3, :cond_6

    if-eqz p3, :cond_1

    invoke-virtual {v0}, Lcom/avira/android/blacklist/model/BLContact;->b()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p3}, Lcom/avira/android/blacklist/model/BLContact;->b()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 303
    :cond_6
    invoke-static {v2}, Lcom/avira/android/blacklist/d/k;->b(Lcom/avira/android/blacklist/d/k;)V

    goto :goto_0

    :cond_7
    move-object v0, v1

    goto :goto_1
.end method

.method public final a(Ljava/lang/String;)Lcom/avira/android/blacklist/model/BLContact;
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 235
    if-nez p1, :cond_0

    .line 248
    :goto_0
    return-object v2

    .line 240
    :cond_0
    iget-object v0, p0, Lcom/avira/android/blacklist/d/h;->b:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 242
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/avira/android/blacklist/model/BLContact;

    invoke-virtual {v1}, Lcom/avira/android/blacklist/model/BLContact;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/avira/android/utilities/aa;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 244
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avira/android/blacklist/model/BLContact;

    :goto_1
    move-object v2, v0

    .line 248
    goto :goto_0

    :cond_2
    move-object v0, v2

    goto :goto_1
.end method

.method public final a()V
    .locals 12

    .prologue
    const/4 v8, 0x0

    .line 71
    iget-object v0, p0, Lcom/avira/android/blacklist/d/h;->b:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 72
    invoke-static {}, Lcom/avira/android/blacklist/d/f;->a()Lcom/avira/android/blacklist/d/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avira/android/blacklist/d/f;->b()Lcom/avira/android/blacklist/d/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avira/android/blacklist/d/l;->b()Lcom/avira/android/blacklist/d/q;

    move-result-object v9

    invoke-static {}, Lcom/avira/android/blacklist/d/f;->a()Lcom/avira/android/blacklist/d/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avira/android/blacklist/d/f;->c()Lcom/avira/android/blacklist/d/h;

    move-result-object v10

    :try_start_0
    iget-object v0, v9, Lcom/avira/android/blacklist/d/q;->a:Lcom/avira/android/blacklist/d/l;

    invoke-static {v0}, Lcom/avira/android/blacklist/d/l;->a(Lcom/avira/android/blacklist/d/l;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "blacklistTable"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "contactId"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "contactName"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v8

    :goto_0
    :try_start_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, v9, Lcom/avira/android/blacklist/d/q;->a:Lcom/avira/android/blacklist/d/l;

    invoke-static {v0}, Lcom/avira/android/blacklist/d/l;->c(Lcom/avira/android/blacklist/d/l;)Lcom/avira/android/database/h;

    move-result-object v0

    const-string v1, "contactId"

    const-string v2, "contactId"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/avira/android/database/h;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iget-object v0, v9, Lcom/avira/android/blacklist/d/q;->a:Lcom/avira/android/blacklist/d/l;

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

    iget-object v6, v9, Lcom/avira/android/blacklist/d/q;->a:Lcom/avira/android/blacklist/d/l;

    invoke-static {v6}, Lcom/avira/android/blacklist/d/l;->c(Lcom/avira/android/blacklist/d/l;)Lcom/avira/android/database/h;

    move-result-object v6

    const-string v7, "ownerId"

    invoke-virtual {v6, v7, v11}, Lcom/avira/android/database/h;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, v9, Lcom/avira/android/blacklist/d/q;->a:Lcom/avira/android/blacklist/d/l;

    invoke-static {v1}, Lcom/avira/android/blacklist/d/l;->c(Lcom/avira/android/blacklist/d/l;)Lcom/avira/android/database/h;

    move-result-object v1

    const-string v2, "contactName"

    const-string v3, "contactName"

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/avira/android/database/h;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v1, v9, Lcom/avira/android/blacklist/d/q;->a:Lcom/avira/android/blacklist/d/l;

    invoke-static {v1}, Lcom/avira/android/blacklist/d/l;->c(Lcom/avira/android/blacklist/d/l;)Lcom/avira/android/database/h;

    move-result-object v1

    const-string v2, "contactNumber"

    const-string v3, "contactNumber"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/avira/android/database/h;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v1, v9, Lcom/avira/android/blacklist/d/q;->a:Lcom/avira/android/blacklist/d/l;

    invoke-static {v1}, Lcom/avira/android/blacklist/d/l;->c(Lcom/avira/android/blacklist/d/l;)Lcom/avira/android/database/h;

    move-result-object v1

    const-string v2, "blockedStatus"

    const-string v3, "blockedStatus"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/avira/android/database/h;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v11}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1}, Lcom/avira/android/blacklist/d/j;->valueOf(Ljava/lang/String;)Lcom/avira/android/blacklist/d/j;

    move-result-object v6

    move-object v1, v10

    invoke-direct/range {v1 .. v6}, Lcom/avira/android/blacklist/d/h;->b(JLjava/lang/String;Ljava/lang/String;Lcom/avira/android/blacklist/d/j;)Lcom/avira/android/blacklist/model/BLContact;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v1, v8

    :goto_2
    invoke-static {}, Lcom/avira/android/utilities/t;->b()Lcom/avira/android/utilities/t;

    move-result-object v2

    const-string v3, "BlacklistTable.getAllContacts"

    const-string v4, "Exception"

    invoke-virtual {v2, v3, v4, v0}, Lcom/avira/android/utilities/t;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v8, v1

    :cond_0
    if-eqz v8, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 73
    :cond_1
    return-void

    .line 72
    :cond_2
    :try_start_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    :catch_1
    move-exception v0

    move-object v1, v8

    goto :goto_2
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Lcom/avira/android/blacklist/d/j;)V
    .locals 7

    .prologue
    .line 107
    const-string v0, "00"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "+"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x2

    invoke-virtual {p2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 112
    :goto_0
    const-wide/16 v2, -0x2

    move-object v1, p0

    move-object v4, p1

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/avira/android/blacklist/d/h;->b(JLjava/lang/String;Ljava/lang/String;Lcom/avira/android/blacklist/d/j;)Lcom/avira/android/blacklist/model/BLContact;

    move-result-object v0

    .line 113
    invoke-static {}, Lcom/avira/android/blacklist/d/f;->a()Lcom/avira/android/blacklist/d/f;

    move-result-object v1

    invoke-virtual {v1}, Lcom/avira/android/blacklist/d/f;->b()Lcom/avira/android/blacklist/d/l;

    move-result-object v1

    invoke-virtual {v1}, Lcom/avira/android/blacklist/d/l;->c()Lcom/avira/android/blacklist/d/p;

    move-result-object v1

    invoke-virtual {v0}, Lcom/avira/android/blacklist/model/BLContact;->b()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3, v5, p3}, Lcom/avira/android/blacklist/d/p;->a(JLjava/lang/String;Lcom/avira/android/blacklist/d/j;)J

    .line 115
    return-void

    :cond_0
    move-object v5, p2

    goto :goto_0
.end method

.method public final a(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/avira/android/blacklist/model/BLContact;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 188
    invoke-static {}, Lcom/avira/android/blacklist/d/f;->a()Lcom/avira/android/blacklist/d/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avira/android/blacklist/d/f;->b()Lcom/avira/android/blacklist/d/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avira/android/blacklist/d/l;->b()Lcom/avira/android/blacklist/d/q;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/avira/android/blacklist/d/q;->a(Ljava/util/ArrayList;)Z

    .line 189
    invoke-virtual {p0}, Lcom/avira/android/blacklist/d/h;->a()V

    .line 191
    invoke-static {}, Lcom/avira/android/blacklist/d/f;->a()Lcom/avira/android/blacklist/d/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avira/android/blacklist/d/f;->b()Lcom/avira/android/blacklist/d/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avira/android/blacklist/d/l;->d()Lcom/avira/android/blacklist/d/n;

    move-result-object v0

    .line 193
    sget-object v1, Lcom/avira/android/blacklist/d/j;->SMS:Lcom/avira/android/blacklist/d/j;

    invoke-virtual {v0, v1}, Lcom/avira/android/blacklist/d/n;->a(Lcom/avira/android/blacklist/d/j;)I

    move-result v1

    .line 194
    sget-object v2, Lcom/avira/android/blacklist/d/j;->CALL:Lcom/avira/android/blacklist/d/j;

    invoke-virtual {v0, v2}, Lcom/avira/android/blacklist/d/n;->a(Lcom/avira/android/blacklist/d/j;)I

    move-result v0

    .line 196
    invoke-static {}, Lcom/avira/android/blacklist/d/a;->c()Lcom/avira/android/blacklist/d/a;

    invoke-static {v1, v0}, Lcom/avira/android/blacklist/d/a;->a(II)V

    .line 197
    return-void
.end method

.method public final b()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/avira/android/blacklist/model/BLContact;",
            ">;"
        }
    .end annotation

    .prologue
    .line 85
    iget-object v0, p0, Lcom/avira/android/blacklist/d/h;->b:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 87
    invoke-virtual {p0}, Lcom/avira/android/blacklist/d/h;->a()V

    .line 90
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/avira/android/blacklist/d/h;->b:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method protected final finalize()V
    .locals 2

    .prologue
    .line 47
    invoke-static {}, Lcom/avira/android/blacklist/d/l;->a()Lcom/avira/android/blacklist/d/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avira/android/blacklist/d/l;->c()Lcom/avira/android/blacklist/d/p;

    move-result-object v0

    iget-object v1, p0, Lcom/avira/android/blacklist/d/h;->a:Lcom/avira/android/blacklist/d/s;

    invoke-virtual {v0, v1}, Lcom/avira/android/blacklist/d/p;->b(Lcom/avira/android/blacklist/d/s;)V

    .line 49
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 50
    return-void
.end method
