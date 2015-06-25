.class public Lcom/avira/android/idsafeguard/api/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/avira/android/idsafeguard/b/b;


# static fields
.field private static final BREACHED_EMAIL_TEMPLATE:Ljava/lang/String; = "android__breached.php"

.field public static final CHECK_EMAILS_API:Ljava/lang/String; = "checkEmails"

.field public static final DISMISS_BREACHES_API:Ljava/lang/String; = "dismissBreaches"

.field private static final EMAIL_NAME:Ljava/lang/String; = "email"

.field public static final GET_BREACHES_API:Ljava/lang/String; = "breaches"

.field public static final GET_DISMISSED_BREACHES_API:Ljava/lang/String; = "getDismissedBreaches"

.field private static final GET_RECENT_BREACHES_API:Ljava/lang/String; = "recentBreaches"

.field private static final LANG:Ljava/lang/String; = "lang"

.field private static final RECENT_BREACHES_LIMIT:I = 0xa

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final a:Lcom/avira/android/common/web/o;

.field private final b:Lcom/avira/android/idsafeguard/api/b;

.field private final c:Lcom/google/b/j;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    const-class v0, Lcom/avira/android/idsafeguard/api/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/avira/android/idsafeguard/api/a;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/avira/android/idsafeguard/api/b;Lcom/avira/android/common/web/o;)V
    .locals 1

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v0, Lcom/google/b/j;

    invoke-direct {v0}, Lcom/google/b/j;-><init>()V

    iput-object v0, p0, Lcom/avira/android/idsafeguard/api/a;->c:Lcom/google/b/j;

    .line 73
    iput-object p2, p0, Lcom/avira/android/idsafeguard/api/a;->a:Lcom/avira/android/common/web/o;

    .line 74
    iput-object p1, p0, Lcom/avira/android/idsafeguard/api/a;->b:Lcom/avira/android/idsafeguard/api/b;

    .line 75
    return-void
.end method

.method private static a(Lcom/avira/android/common/web/WebResult;)Z
    .locals 2

    .prologue
    .line 85
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/avira/android/common/web/WebResult;->a()I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a(Ljava/util/Collection;)Lcom/avira/android/idsafeguard/api/gson/ISApiResponse;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/avira/android/idsafeguard/api/gson/ISDismissBreachesApiRequestData$EmailBreaches;",
            ">;)",
            "Lcom/avira/android/idsafeguard/api/gson/ISApiResponse;"
        }
    .end annotation

    .prologue
    .line 127
    invoke-static {}, Lcom/avira/android/utilities/t;->b()Lcom/avira/android/utilities/t;

    sget-object v0, Lcom/avira/android/idsafeguard/api/a;->TAG:Ljava/lang/String;

    const-string v1, " Dismiss breaches..."

    invoke-static {v0, v1}, Lcom/avira/android/utilities/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    const/4 v1, 0x0

    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 133
    iget-object v2, p0, Lcom/avira/android/idsafeguard/api/a;->b:Lcom/avira/android/idsafeguard/api/b;

    invoke-virtual {v2}, Lcom/avira/android/idsafeguard/api/b;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    const-string v2, "dismissBreaches"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    :try_start_0
    new-instance v2, Lcom/avira/android/idsafeguard/api/gson/ISDismissBreachesApiRequestData;

    iget-object v3, p0, Lcom/avira/android/idsafeguard/api/a;->b:Lcom/avira/android/idsafeguard/api/b;

    invoke-virtual {v3}, Lcom/avira/android/idsafeguard/api/b;->c()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/avira/android/idsafeguard/api/a;->b:Lcom/avira/android/idsafeguard/api/b;

    invoke-virtual {v4}, Lcom/avira/android/idsafeguard/api/b;->e()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4, p1}, Lcom/avira/android/idsafeguard/api/gson/ISDismissBreachesApiRequestData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;)V

    .line 139
    iget-object v3, p0, Lcom/avira/android/idsafeguard/api/a;->c:Lcom/google/b/j;

    invoke-virtual {v3, v2}, Lcom/google/b/j;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 141
    iget-object v3, p0, Lcom/avira/android/idsafeguard/api/a;->a:Lcom/avira/android/common/web/o;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/avira/android/common/web/o;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/avira/android/common/web/WebResult;

    move-result-object v0

    .line 143
    invoke-static {v0}, Lcom/avira/android/idsafeguard/api/a;->a(Lcom/avira/android/common/web/WebResult;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 146
    iget-object v2, p0, Lcom/avira/android/idsafeguard/api/a;->c:Lcom/google/b/j;

    invoke-virtual {v0}, Lcom/avira/android/common/web/WebResult;->c()Ljava/lang/String;

    move-result-object v0

    const-class v3, Lcom/avira/android/idsafeguard/api/gson/ISApiResponse;

    invoke-virtual {v2, v0, v3}, Lcom/google/b/j;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avira/android/idsafeguard/api/gson/ISApiResponse;
    :try_end_0
    .catch Lcom/google/b/x; {:try_start_0 .. :try_end_0} :catch_0

    .line 154
    :goto_0
    return-object v0

    .line 149
    :catch_0
    move-exception v0

    .line 151
    invoke-static {}, Lcom/avira/android/utilities/t;->b()Lcom/avira/android/utilities/t;

    move-result-object v2

    sget-object v3, Lcom/avira/android/idsafeguard/api/a;->TAG:Ljava/lang/String;

    const-string v4, "Malformed Json Data "

    invoke-virtual {v2, v3, v4, v0}, Lcom/avira/android/utilities/t;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method public final a()Lcom/avira/android/idsafeguard/api/gson/ISBreachesResponse;
    .locals 5

    .prologue
    .line 91
    invoke-static {}, Lcom/avira/android/utilities/t;->b()Lcom/avira/android/utilities/t;

    sget-object v0, Lcom/avira/android/idsafeguard/api/a;->TAG:Ljava/lang/String;

    const-string v1, "Getting breaches from server..."

    invoke-static {v0, v1}, Lcom/avira/android/utilities/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    const/4 v1, 0x0

    .line 95
    new-instance v0, Lcom/avira/android/idsafeguard/api/gson/ISGetBreachesRequestData;

    iget-object v2, p0, Lcom/avira/android/idsafeguard/api/a;->b:Lcom/avira/android/idsafeguard/api/b;

    invoke-virtual {v2}, Lcom/avira/android/idsafeguard/api/b;->c()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/avira/android/idsafeguard/api/a;->b:Lcom/avira/android/idsafeguard/api/b;

    invoke-virtual {v3}, Lcom/avira/android/idsafeguard/api/b;->e()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/avira/android/idsafeguard/api/a;->b:Lcom/avira/android/idsafeguard/api/b;

    invoke-virtual {v4}, Lcom/avira/android/idsafeguard/api/b;->d()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v2, v3, v4}, Lcom/avira/android/idsafeguard/api/gson/ISGetBreachesRequestData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    iget-object v2, p0, Lcom/avira/android/idsafeguard/api/a;->c:Lcom/google/b/j;

    invoke-virtual {v2, v0}, Lcom/google/b/j;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 100
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 101
    iget-object v3, p0, Lcom/avira/android/idsafeguard/api/a;->b:Lcom/avira/android/idsafeguard/api/b;

    invoke-virtual {v3}, Lcom/avira/android/idsafeguard/api/b;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    const-string v3, "breaches"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 106
    iget-object v3, p0, Lcom/avira/android/idsafeguard/api/a;->a:Lcom/avira/android/common/web/o;

    invoke-static {v2, v0}, Lcom/avira/android/common/web/o;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/avira/android/common/web/WebResult;

    move-result-object v0

    .line 108
    invoke-static {v0}, Lcom/avira/android/idsafeguard/api/a;->a(Lcom/avira/android/common/web/WebResult;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 113
    :try_start_0
    iget-object v2, p0, Lcom/avira/android/idsafeguard/api/a;->c:Lcom/google/b/j;

    invoke-virtual {v0}, Lcom/avira/android/common/web/WebResult;->c()Ljava/lang/String;

    move-result-object v0

    const-class v3, Lcom/avira/android/idsafeguard/api/gson/ISBreachesResponse;

    invoke-virtual {v2, v0, v3}, Lcom/google/b/j;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avira/android/idsafeguard/api/gson/ISBreachesResponse;
    :try_end_0
    .catch Lcom/google/b/x; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    :goto_0
    return-object v0

    .line 115
    :catch_0
    move-exception v0

    .line 117
    invoke-static {}, Lcom/avira/android/utilities/t;->b()Lcom/avira/android/utilities/t;

    move-result-object v2

    sget-object v3, Lcom/avira/android/idsafeguard/api/a;->TAG:Ljava/lang/String;

    const-string v4, "Malformed Json Data "

    invoke-virtual {v2, v3, v4, v0}, Lcom/avira/android/utilities/t;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 230
    const-string v1, ""

    .line 231
    const-string v0, ""

    .line 233
    invoke-static {p1}, Lcom/avira/android/utilities/al;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 239
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 240
    iget-object v2, p0, Lcom/avira/android/idsafeguard/api/a;->b:Lcom/avira/android/idsafeguard/api/b;

    invoke-virtual {v2}, Lcom/avira/android/idsafeguard/api/b;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    const-string v2, "email"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    const-string v2, "android__breached.php"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    const-string v2, "?"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    const-string v2, "lang"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    const-string v2, "="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 251
    iget-object v2, p0, Lcom/avira/android/idsafeguard/api/a;->a:Lcom/avira/android/common/web/o;

    invoke-static {v0}, Lcom/avira/android/common/web/o;->b(Ljava/lang/String;)Lcom/avira/android/common/web/WebResult;

    move-result-object v0

    .line 253
    invoke-static {v0}, Lcom/avira/android/idsafeguard/api/a;->a(Lcom/avira/android/common/web/WebResult;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 255
    invoke-virtual {v0}, Lcom/avira/android/common/web/WebResult;->c()Ljava/lang/String;

    move-result-object v0

    .line 257
    invoke-static {v0}, Lcom/avira/android/utilities/al;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 263
    :goto_1
    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_1

    :cond_1
    move-object p1, v0

    goto :goto_0
.end method

.method public final b(Ljava/util/Collection;)Lcom/avira/android/idsafeguard/api/gson/ISCheckEmailsResponse;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/avira/android/idsafeguard/api/gson/ISCheckEmailsResponse;"
        }
    .end annotation

    .prologue
    .line 192
    invoke-static {}, Lcom/avira/android/utilities/t;->b()Lcom/avira/android/utilities/t;

    sget-object v0, Lcom/avira/android/idsafeguard/api/a;->TAG:Ljava/lang/String;

    const-string v1, " Checking emails..."

    invoke-static {v0, v1}, Lcom/avira/android/utilities/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    const/4 v1, 0x0

    .line 195
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 196
    invoke-interface {p1, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 200
    :try_start_0
    new-instance v2, Lcom/avira/android/idsafeguard/api/gson/ISCheckEmailsRequestData;

    iget-object v3, p0, Lcom/avira/android/idsafeguard/api/a;->b:Lcom/avira/android/idsafeguard/api/b;

    invoke-virtual {v3}, Lcom/avira/android/idsafeguard/api/b;->c()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/avira/android/idsafeguard/api/a;->b:Lcom/avira/android/idsafeguard/api/b;

    invoke-virtual {v4}, Lcom/avira/android/idsafeguard/api/b;->e()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4, v0}, Lcom/avira/android/idsafeguard/api/gson/ISCheckEmailsRequestData;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 202
    iget-object v0, p0, Lcom/avira/android/idsafeguard/api/a;->c:Lcom/google/b/j;

    invoke-virtual {v0, v2}, Lcom/google/b/j;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 205
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 206
    iget-object v3, p0, Lcom/avira/android/idsafeguard/api/a;->b:Lcom/avira/android/idsafeguard/api/b;

    invoke-virtual {v3}, Lcom/avira/android/idsafeguard/api/b;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    const-string v3, "checkEmails"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 211
    iget-object v3, p0, Lcom/avira/android/idsafeguard/api/a;->a:Lcom/avira/android/common/web/o;

    invoke-static {v2, v0}, Lcom/avira/android/common/web/o;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/avira/android/common/web/WebResult;

    move-result-object v0

    .line 213
    invoke-static {v0}, Lcom/avira/android/idsafeguard/api/a;->a(Lcom/avira/android/common/web/WebResult;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 216
    iget-object v2, p0, Lcom/avira/android/idsafeguard/api/a;->c:Lcom/google/b/j;

    invoke-virtual {v0}, Lcom/avira/android/common/web/WebResult;->c()Ljava/lang/String;

    move-result-object v0

    const-class v3, Lcom/avira/android/idsafeguard/api/gson/ISCheckEmailsResponse;

    invoke-virtual {v2, v0, v3}, Lcom/google/b/j;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avira/android/idsafeguard/api/gson/ISCheckEmailsResponse;
    :try_end_0
    .catch Lcom/google/b/x; {:try_start_0 .. :try_end_0} :catch_0

    .line 224
    :goto_0
    return-object v0

    .line 219
    :catch_0
    move-exception v0

    .line 221
    invoke-static {}, Lcom/avira/android/utilities/t;->b()Lcom/avira/android/utilities/t;

    move-result-object v2

    sget-object v3, Lcom/avira/android/idsafeguard/api/a;->TAG:Ljava/lang/String;

    const-string v4, "Malformed Json Data "

    invoke-virtual {v2, v3, v4, v0}, Lcom/avira/android/utilities/t;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method public final b()Lcom/avira/android/idsafeguard/api/gson/ISGetDismissedBreachesResponse;
    .locals 5

    .prologue
    .line 160
    invoke-static {}, Lcom/avira/android/utilities/t;->b()Lcom/avira/android/utilities/t;

    sget-object v0, Lcom/avira/android/idsafeguard/api/a;->TAG:Ljava/lang/String;

    const-string v1, " Get dismissed breaches..."

    invoke-static {v0, v1}, Lcom/avira/android/utilities/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    const/4 v1, 0x0

    .line 165
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 166
    iget-object v2, p0, Lcom/avira/android/idsafeguard/api/a;->b:Lcom/avira/android/idsafeguard/api/b;

    invoke-virtual {v2}, Lcom/avira/android/idsafeguard/api/b;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    const-string v2, "getDismissedBreaches"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    :try_start_0
    new-instance v2, Lcom/avira/android/idsafeguard/api/gson/ISApiRequestData;

    iget-object v3, p0, Lcom/avira/android/idsafeguard/api/a;->b:Lcom/avira/android/idsafeguard/api/b;

    invoke-virtual {v3}, Lcom/avira/android/idsafeguard/api/b;->c()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/avira/android/idsafeguard/api/a;->b:Lcom/avira/android/idsafeguard/api/b;

    invoke-virtual {v4}, Lcom/avira/android/idsafeguard/api/b;->e()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/avira/android/idsafeguard/api/gson/ISApiRequestData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    iget-object v3, p0, Lcom/avira/android/idsafeguard/api/a;->c:Lcom/google/b/j;

    invoke-virtual {v3, v2}, Lcom/google/b/j;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 173
    iget-object v3, p0, Lcom/avira/android/idsafeguard/api/a;->a:Lcom/avira/android/common/web/o;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/avira/android/common/web/o;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/avira/android/common/web/WebResult;

    move-result-object v0

    .line 175
    invoke-static {v0}, Lcom/avira/android/idsafeguard/api/a;->a(Lcom/avira/android/common/web/WebResult;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 178
    iget-object v2, p0, Lcom/avira/android/idsafeguard/api/a;->c:Lcom/google/b/j;

    invoke-virtual {v0}, Lcom/avira/android/common/web/WebResult;->c()Ljava/lang/String;

    move-result-object v0

    const-class v3, Lcom/avira/android/idsafeguard/api/gson/ISGetDismissedBreachesResponse;

    invoke-virtual {v2, v0, v3}, Lcom/google/b/j;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avira/android/idsafeguard/api/gson/ISGetDismissedBreachesResponse;
    :try_end_0
    .catch Lcom/google/b/x; {:try_start_0 .. :try_end_0} :catch_0

    .line 186
    :goto_0
    return-object v0

    .line 181
    :catch_0
    move-exception v0

    .line 183
    invoke-static {}, Lcom/avira/android/utilities/t;->b()Lcom/avira/android/utilities/t;

    move-result-object v2

    sget-object v3, Lcom/avira/android/idsafeguard/api/a;->TAG:Ljava/lang/String;

    const-string v4, "Malformed Json Data "

    invoke-virtual {v2, v3, v4, v0}, Lcom/avira/android/utilities/t;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method public final c()Lcom/avira/android/idsafeguard/api/gson/ISBreachesResponse;
    .locals 7

    .prologue
    .line 269
    invoke-static {}, Lcom/avira/android/utilities/t;->b()Lcom/avira/android/utilities/t;

    sget-object v0, Lcom/avira/android/idsafeguard/api/a;->TAG:Ljava/lang/String;

    const-string v1, " Fetching recent breaches..."

    invoke-static {v0, v1}, Lcom/avira/android/utilities/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    const/4 v1, 0x0

    .line 274
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 275
    iget-object v2, p0, Lcom/avira/android/idsafeguard/api/a;->b:Lcom/avira/android/idsafeguard/api/b;

    invoke-virtual {v2}, Lcom/avira/android/idsafeguard/api/b;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    const-string v2, "recentBreaches"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    :try_start_0
    new-instance v2, Lcom/avira/android/idsafeguard/api/gson/ISRecentBreachesRequestData;

    iget-object v3, p0, Lcom/avira/android/idsafeguard/api/a;->b:Lcom/avira/android/idsafeguard/api/b;

    invoke-virtual {v3}, Lcom/avira/android/idsafeguard/api/b;->c()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/avira/android/idsafeguard/api/a;->b:Lcom/avira/android/idsafeguard/api/b;

    invoke-virtual {v4}, Lcom/avira/android/idsafeguard/api/b;->e()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/avira/android/idsafeguard/api/a;->b:Lcom/avira/android/idsafeguard/api/b;

    invoke-virtual {v5}, Lcom/avira/android/idsafeguard/api/b;->d()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0xa

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/avira/android/idsafeguard/api/gson/ISRecentBreachesRequestData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 281
    iget-object v3, p0, Lcom/avira/android/idsafeguard/api/a;->c:Lcom/google/b/j;

    invoke-virtual {v3, v2}, Lcom/google/b/j;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 283
    iget-object v3, p0, Lcom/avira/android/idsafeguard/api/a;->a:Lcom/avira/android/common/web/o;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/avira/android/common/web/o;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/avira/android/common/web/WebResult;

    move-result-object v0

    .line 285
    invoke-static {v0}, Lcom/avira/android/idsafeguard/api/a;->a(Lcom/avira/android/common/web/WebResult;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 288
    iget-object v2, p0, Lcom/avira/android/idsafeguard/api/a;->c:Lcom/google/b/j;

    invoke-virtual {v0}, Lcom/avira/android/common/web/WebResult;->c()Ljava/lang/String;

    move-result-object v0

    const-class v3, Lcom/avira/android/idsafeguard/api/gson/ISBreachesResponse;

    invoke-virtual {v2, v0, v3}, Lcom/google/b/j;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avira/android/idsafeguard/api/gson/ISBreachesResponse;
    :try_end_0
    .catch Lcom/google/b/x; {:try_start_0 .. :try_end_0} :catch_0

    .line 296
    :goto_0
    return-object v0

    .line 291
    :catch_0
    move-exception v0

    .line 293
    invoke-static {}, Lcom/avira/android/utilities/t;->b()Lcom/avira/android/utilities/t;

    move-result-object v2

    sget-object v3, Lcom/avira/android/idsafeguard/api/a;->TAG:Ljava/lang/String;

    const-string v4, "Malformed Json Data "

    invoke-virtual {v2, v3, v4, v0}, Lcom/avira/android/utilities/t;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method
