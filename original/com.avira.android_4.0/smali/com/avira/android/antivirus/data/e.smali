.class public final Lcom/avira/android/antivirus/data/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final ADWARE_INDEX:I = 0x1

.field private static final PUA_INDEX:I = 0x2

.field private static final oe_categories_keys:[I

.field private static final oe_section_element_safe:[I

.field private static final oe_section_element_turn_on:[I

.field private static final oe_section_titles:[I

.field public static final oe_threat_detail_title:[I

.field public static final oe_threat_info_detail:[I

.field public static final oe_threat_info_title:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x3

    .line 23
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/avira/android/antivirus/data/e;->oe_categories_keys:[I

    .line 26
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/avira/android/antivirus/data/e;->oe_section_titles:[I

    .line 29
    new-array v0, v1, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/avira/android/antivirus/data/e;->oe_section_element_safe:[I

    .line 32
    new-array v0, v1, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/avira/android/antivirus/data/e;->oe_section_element_turn_on:[I

    .line 35
    new-array v0, v1, [I

    fill-array-data v0, :array_4

    sput-object v0, Lcom/avira/android/antivirus/data/e;->oe_threat_detail_title:[I

    .line 38
    new-array v0, v1, [I

    fill-array-data v0, :array_5

    sput-object v0, Lcom/avira/android/antivirus/data/e;->oe_threat_info_title:[I

    .line 41
    new-array v0, v1, [I

    fill-array-data v0, :array_6

    sput-object v0, Lcom/avira/android/antivirus/data/e;->oe_threat_info_detail:[I

    return-void

    .line 23
    nop

    :array_0
    .array-data 4
        0x7f0b000a
        0x7f0b000b
        0x7f0b0009
    .end array-data

    .line 26
    :array_1
    .array-data 4
        0x7f0802fd
        0x7f0802ff
        0x7f0802fe
    .end array-data

    .line 29
    :array_2
    .array-data 4
        0x7f080300
        0x7f080302
        0x7f080301
    .end array-data

    .line 32
    :array_3
    .array-data 4
        0x0
        0x7f080303
        0x7f080304
    .end array-data

    .line 35
    :array_4
    .array-data 4
        0x7f080306
        0x7f080307
        0x7f080308
    .end array-data

    .line 38
    :array_5
    .array-data 4
        0x7f080310
        0x7f080312
        0x7f080311
    .end array-data

    .line 41
    :array_6
    .array-data 4
        0x7f080313
        0x7f080315
        0x7f080314
    .end array-data
.end method

.method public static a(Ljava/lang/String;Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;
    .locals 4

    .prologue
    .line 282
    const/4 v0, 0x0

    .line 285
    :try_start_0
    invoke-virtual {p1, p0}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 286
    if-eqz v1, :cond_0

    .line 288
    invoke-virtual {p1, v1}, Landroid/content/pm/PackageManager;->getActivityIcon(Landroid/content/Intent;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 295
    :cond_0
    :goto_0
    return-object v0

    .line 291
    :catch_0
    move-exception v1

    .line 293
    const-string v1, "ERROR"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unable to find icon for package \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static a(Ljava/util/List;I)Lcom/avira/android/antivirus/data/h;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/avira/android/antivirus/data/b;",
            ">;I)",
            "Lcom/avira/android/antivirus/data/h;"
        }
    .end annotation

    .prologue
    .line 88
    const/4 v1, 0x0

    .line 90
    :goto_0
    if-ltz p1, :cond_1

    .line 92
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 93
    instance-of v2, v0, Lcom/avira/android/antivirus/data/h;

    if-eqz v2, :cond_0

    .line 95
    check-cast v0, Lcom/avira/android/antivirus/data/h;

    .line 99
    :goto_1
    return-object v0

    .line 90
    :cond_0
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_1
    move-object v0, v1

    goto :goto_1
.end method

.method private static a([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 225
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 227
    array-length v2, p0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, p0, v1

    .line 229
    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 231
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 236
    :cond_0
    return-object v0

    .line 227
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static a(Ljava/util/List;Landroid/content/res/Resources;)Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/avira/android/antivirus/data/a;",
            ">;",
            "Landroid/content/res/Resources;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/avira/android/antivirus/data/b;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 115
    const v0, 0x7f0b0008

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    new-instance v6, Ljava/util/ArrayList;

    array-length v0, v1

    invoke-direct {v6, v0}, Ljava/util/ArrayList;-><init>(I)V

    move v0, v3

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    aget-object v2, v1, v0

    sget-object v4, Lcom/avira/android/antivirus/data/e;->oe_categories_keys:[I

    aget v4, v4, v0

    invoke-virtual {p1, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    new-instance v7, Lcom/avira/android/antivirus/data/h;

    invoke-direct {v7, v2, v4, v0}, Lcom/avira/android/antivirus/data/h;-><init>(Ljava/lang/String;[Ljava/lang/String;I)V

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 117
    :cond_0
    new-instance v7, Ljava/util/LinkedList;

    invoke-direct {v7}, Ljava/util/LinkedList;-><init>()V

    .line 120
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avira/android/antivirus/data/b;

    .line 122
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 123
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 124
    invoke-virtual {v7, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 128
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_2
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/avira/android/antivirus/data/a;

    .line 132
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move v4, v3

    :cond_3
    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avira/android/antivirus/data/b;

    move-object v1, v0

    .line 134
    check-cast v1, Lcom/avira/android/antivirus/data/h;

    invoke-virtual {v1}, Lcom/avira/android/antivirus/data/h;->a()[Ljava/lang/String;

    move-result-object v10

    .line 136
    invoke-interface {v2}, Lcom/avira/android/antivirus/data/a;->e()Ljava/util/HashSet;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_4
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 138
    const-string v12, "/"

    invoke-virtual {v1, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v3

    .line 139
    if-eqz v1, :cond_4

    invoke-static {v10, v1}, Lcom/avira/android/antivirus/data/e;->a([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 141
    invoke-interface {v6, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {v7, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    move-object v1, v2

    .line 142
    check-cast v1, Lcom/avira/android/antivirus/data/b;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v4, v5

    .line 144
    goto :goto_3

    .line 150
    :cond_5
    if-nez v4, :cond_2

    .line 152
    invoke-virtual {v7, v3}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 154
    check-cast v2, Lcom/avira/android/antivirus/data/b;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 159
    :cond_6
    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    .line 160
    invoke-virtual {v7}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 163
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/avira/android/antivirus/data/h;

    .line 164
    invoke-virtual {v7, v0}, Ljava/util/LinkedList;->indexOf(Ljava/lang/Object;)I

    move-result v8

    .line 166
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 167
    sget-object v9, Lcom/avira/android/antivirus/data/e;->oe_section_titles:[I

    aget v9, v9, v8

    invoke-virtual {p1, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 168
    new-array v10, v5, [Ljava/lang/Object;

    add-int/lit8 v11, v2, -0x1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v3

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Lcom/avira/android/antivirus/data/h;->a(Ljava/lang/String;)V

    .line 170
    if-ne v2, v5, :cond_7

    .line 172
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 175
    if-ne v8, v5, :cond_8

    .line 177
    invoke-static {}, Lcom/avira/android/antivirus/s;->a()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 178
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-nez v9, :cond_9

    .line 180
    const v9, 0x7f080319

    invoke-virtual {p1, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Lcom/avira/android/antivirus/data/h;->a(Ljava/lang/String;)V

    move-object v1, v2

    .line 194
    :goto_5
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 196
    sget-object v1, Lcom/avira/android/antivirus/data/e;->oe_section_element_safe:[I

    aget v1, v1, v8

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 197
    new-instance v1, Lcom/avira/android/antivirus/data/f;

    invoke-direct {v1, v2}, Lcom/avira/android/antivirus/data/f;-><init>(Ljava/lang/String;)V

    .line 205
    :goto_6
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 207
    :cond_7
    invoke-virtual {v4, v0}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    goto :goto_4

    .line 183
    :cond_8
    const/4 v9, 0x2

    if-ne v8, v9, :cond_9

    .line 185
    invoke-static {}, Lcom/avira/android/antivirus/s;->b()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 186
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-nez v9, :cond_9

    .line 188
    const v9, 0x7f08031a

    invoke-virtual {p1, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Lcom/avira/android/antivirus/data/h;->a(Ljava/lang/String;)V

    :cond_9
    move-object v1, v2

    goto :goto_5

    .line 201
    :cond_a
    sget-object v1, Lcom/avira/android/antivirus/data/e;->oe_section_element_turn_on:[I

    aget v1, v1, v8

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 202
    new-instance v1, Lcom/avira/android/antivirus/data/f;

    sget-object v8, Lcom/avira/android/antivirus/data/c;->DISABLED:Lcom/avira/android/antivirus/data/c;

    invoke-direct {v1, v2, v8}, Lcom/avira/android/antivirus/data/f;-><init>(Ljava/lang/String;Lcom/avira/android/antivirus/data/c;)V

    goto :goto_6

    .line 210
    :cond_b
    return-object v4
.end method

.method public static a(Ljava/util/ArrayList;Landroid/content/pm/PackageManager;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/avira/android/antivirus/data/a;",
            ">;",
            "Landroid/content/pm/PackageManager;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 250
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 252
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avira/android/antivirus/data/a;

    .line 254
    invoke-interface {v0}, Lcom/avira/android/antivirus/data/a;->b()Ljava/lang/String;

    move-result-object v3

    .line 257
    if-eqz v3, :cond_0

    .line 259
    invoke-static {v3, p1}, Lcom/avira/android/antivirus/data/e;->a(Ljava/lang/String;Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 260
    if-eqz v3, :cond_0

    .line 262
    invoke-interface {v0}, Lcom/avira/android/antivirus/data/a;->b()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 267
    :cond_1
    return-object v1
.end method
