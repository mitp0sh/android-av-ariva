.class public final enum Lcom/avira/android/i;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/avira/android/i;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/avira/android/i;

.field public static final enum ACTION_CREATE_ACCOUNT_EXIT:Lcom/avira/android/i;

.field public static final enum ACTION_CREATE_ACCOUNT_OK:Lcom/avira/android/i;

.field public static final enum ACTION_FIRST_SCAN_EXIT:Lcom/avira/android/i;

.field public static final enum ACTION_FIRST_SCAN_OK:Lcom/avira/android/i;

.field public static final enum ACTION_INTRO_EXIT:Lcom/avira/android/i;

.field public static final enum ACTION_INTRO_OK:Lcom/avira/android/i;

.field public static final enum ACTION_LOGIN_EXIT:Lcom/avira/android/i;

.field public static final enum ACTION_LOGIN_OK:Lcom/avira/android/i;

.field public static final enum ACTION_SHOW_CREATE_ACCOUNT:Lcom/avira/android/i;

.field public static final enum ACTION_SHOW_LOGIN:Lcom/avira/android/i;

.field public static final enum ACTION_SKIP_LOGIN:Lcom/avira/android/i;

.field public static final enum ACTION_USER_DETAILS_EXIT:Lcom/avira/android/i;

.field public static final enum ACTION_USER_DETAILS_OK:Lcom/avira/android/i;

.field public static final enum ACTION_WELCOME_EXIT:Lcom/avira/android/i;

.field private static final sActionList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sLookup:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/avira/android/i;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 14
    new-instance v0, Lcom/avira/android/i;

    const-string v1, "ACTION_SHOW_CREATE_ACCOUNT"

    const-string v2, "com.avira.android.ACTION_SHOW_CREATE_ACCOUNT"

    invoke-direct {v0, v1, v4, v2}, Lcom/avira/android/i;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/avira/android/i;->ACTION_SHOW_CREATE_ACCOUNT:Lcom/avira/android/i;

    new-instance v0, Lcom/avira/android/i;

    const-string v1, "ACTION_SHOW_LOGIN"

    const-string v2, "com.avira.android.ACTION_SHOW_LOGIN"

    invoke-direct {v0, v1, v5, v2}, Lcom/avira/android/i;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/avira/android/i;->ACTION_SHOW_LOGIN:Lcom/avira/android/i;

    .line 17
    new-instance v0, Lcom/avira/android/i;

    const-string v1, "ACTION_CREATE_ACCOUNT_OK"

    const-string v2, "com.avira.android.ACTION_CREATE_ACCOUNT_OK"

    invoke-direct {v0, v1, v6, v2}, Lcom/avira/android/i;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/avira/android/i;->ACTION_CREATE_ACCOUNT_OK:Lcom/avira/android/i;

    new-instance v0, Lcom/avira/android/i;

    const-string v1, "ACTION_CREATE_ACCOUNT_EXIT"

    const-string v2, "com.avira.android.ACTION_CREATE_ACCOUNT_EXIT"

    invoke-direct {v0, v1, v7, v2}, Lcom/avira/android/i;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/avira/android/i;->ACTION_CREATE_ACCOUNT_EXIT:Lcom/avira/android/i;

    .line 20
    new-instance v0, Lcom/avira/android/i;

    const-string v1, "ACTION_LOGIN_OK"

    const-string v2, "com.avira.android.ACTION_LOGIN_OK"

    invoke-direct {v0, v1, v8, v2}, Lcom/avira/android/i;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/avira/android/i;->ACTION_LOGIN_OK:Lcom/avira/android/i;

    new-instance v0, Lcom/avira/android/i;

    const-string v1, "ACTION_LOGIN_EXIT"

    const/4 v2, 0x5

    const-string v3, "com.avira.android.ACTION_LOGIN_EXIT"

    invoke-direct {v0, v1, v2, v3}, Lcom/avira/android/i;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/avira/android/i;->ACTION_LOGIN_EXIT:Lcom/avira/android/i;

    .line 22
    new-instance v0, Lcom/avira/android/i;

    const-string v1, "ACTION_USER_DETAILS_OK"

    const/4 v2, 0x6

    const-string v3, "com.avira.android.ACTION_USER_DETAILS_OK"

    invoke-direct {v0, v1, v2, v3}, Lcom/avira/android/i;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/avira/android/i;->ACTION_USER_DETAILS_OK:Lcom/avira/android/i;

    new-instance v0, Lcom/avira/android/i;

    const-string v1, "ACTION_USER_DETAILS_EXIT"

    const/4 v2, 0x7

    const-string v3, "com.avira.android.ACTION_USER_DETAILS_EXIT"

    invoke-direct {v0, v1, v2, v3}, Lcom/avira/android/i;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/avira/android/i;->ACTION_USER_DETAILS_EXIT:Lcom/avira/android/i;

    .line 25
    new-instance v0, Lcom/avira/android/i;

    const-string v1, "ACTION_INTRO_OK"

    const/16 v2, 0x8

    const-string v3, "com.avira.android.ACTION_INTRO_OK"

    invoke-direct {v0, v1, v2, v3}, Lcom/avira/android/i;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/avira/android/i;->ACTION_INTRO_OK:Lcom/avira/android/i;

    new-instance v0, Lcom/avira/android/i;

    const-string v1, "ACTION_INTRO_EXIT"

    const/16 v2, 0x9

    const-string v3, "com.avira.android.ACTION_INTRO_EXIT"

    invoke-direct {v0, v1, v2, v3}, Lcom/avira/android/i;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/avira/android/i;->ACTION_INTRO_EXIT:Lcom/avira/android/i;

    .line 27
    new-instance v0, Lcom/avira/android/i;

    const-string v1, "ACTION_FIRST_SCAN_OK"

    const/16 v2, 0xa

    const-string v3, "com.avira.android.ACTION_FIRST_SCAN_OK"

    invoke-direct {v0, v1, v2, v3}, Lcom/avira/android/i;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/avira/android/i;->ACTION_FIRST_SCAN_OK:Lcom/avira/android/i;

    new-instance v0, Lcom/avira/android/i;

    const-string v1, "ACTION_FIRST_SCAN_EXIT"

    const/16 v2, 0xb

    const-string v3, "com.avira.android.ACTION_FIRST_SCAN_EXIT"

    invoke-direct {v0, v1, v2, v3}, Lcom/avira/android/i;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/avira/android/i;->ACTION_FIRST_SCAN_EXIT:Lcom/avira/android/i;

    .line 30
    new-instance v0, Lcom/avira/android/i;

    const-string v1, "ACTION_WELCOME_EXIT"

    const/16 v2, 0xc

    const-string v3, "com.avira.android.ACTION_WELCOME_EXIT"

    invoke-direct {v0, v1, v2, v3}, Lcom/avira/android/i;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/avira/android/i;->ACTION_WELCOME_EXIT:Lcom/avira/android/i;

    new-instance v0, Lcom/avira/android/i;

    const-string v1, "ACTION_SKIP_LOGIN"

    const/16 v2, 0xd

    const-string v3, "com.avira.android.ACTION_SKIP_LOGIN"

    invoke-direct {v0, v1, v2, v3}, Lcom/avira/android/i;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/avira/android/i;->ACTION_SKIP_LOGIN:Lcom/avira/android/i;

    .line 12
    const/16 v0, 0xe

    new-array v0, v0, [Lcom/avira/android/i;

    sget-object v1, Lcom/avira/android/i;->ACTION_SHOW_CREATE_ACCOUNT:Lcom/avira/android/i;

    aput-object v1, v0, v4

    sget-object v1, Lcom/avira/android/i;->ACTION_SHOW_LOGIN:Lcom/avira/android/i;

    aput-object v1, v0, v5

    sget-object v1, Lcom/avira/android/i;->ACTION_CREATE_ACCOUNT_OK:Lcom/avira/android/i;

    aput-object v1, v0, v6

    sget-object v1, Lcom/avira/android/i;->ACTION_CREATE_ACCOUNT_EXIT:Lcom/avira/android/i;

    aput-object v1, v0, v7

    sget-object v1, Lcom/avira/android/i;->ACTION_LOGIN_OK:Lcom/avira/android/i;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/avira/android/i;->ACTION_LOGIN_EXIT:Lcom/avira/android/i;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/avira/android/i;->ACTION_USER_DETAILS_OK:Lcom/avira/android/i;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/avira/android/i;->ACTION_USER_DETAILS_EXIT:Lcom/avira/android/i;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/avira/android/i;->ACTION_INTRO_OK:Lcom/avira/android/i;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/avira/android/i;->ACTION_INTRO_EXIT:Lcom/avira/android/i;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/avira/android/i;->ACTION_FIRST_SCAN_OK:Lcom/avira/android/i;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/avira/android/i;->ACTION_FIRST_SCAN_EXIT:Lcom/avira/android/i;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/avira/android/i;->ACTION_WELCOME_EXIT:Lcom/avira/android/i;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/avira/android/i;->ACTION_SKIP_LOGIN:Lcom/avira/android/i;

    aput-object v2, v0, v1

    sput-object v0, Lcom/avira/android/i;->$VALUES:[Lcom/avira/android/i;

    .line 33
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/avira/android/i;->sLookup:Ljava/util/Map;

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/avira/android/i;->sActionList:Ljava/util/ArrayList;

    .line 39
    const-class v0, Lcom/avira/android/i;

    invoke-static {v0}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/EnumSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avira/android/i;

    .line 41
    sget-object v2, Lcom/avira/android/i;->sLookup:Ljava/util/Map;

    iget-object v3, v0, Lcom/avira/android/i;->a:Ljava/lang/String;

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    sget-object v2, Lcom/avira/android/i;->sActionList:Ljava/util/ArrayList;

    iget-object v0, v0, Lcom/avira/android/i;->a:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 44
    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 50
    iput-object p3, p0, Lcom/avira/android/i;->a:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/avira/android/i;
    .locals 1

    .prologue
    .line 60
    sget-object v0, Lcom/avira/android/i;->sLookup:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avira/android/i;

    return-object v0
.end method

.method public static b()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 65
    sget-object v0, Lcom/avira/android/i;->sActionList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/avira/android/i;
    .locals 1

    .prologue
    .line 12
    const-class v0, Lcom/avira/android/i;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/avira/android/i;

    return-object v0
.end method

.method public static values()[Lcom/avira/android/i;
    .locals 1

    .prologue
    .line 12
    sget-object v0, Lcom/avira/android/i;->$VALUES:[Lcom/avira/android/i;

    invoke-virtual {v0}, [Lcom/avira/android/i;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/avira/android/i;

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/avira/android/i;->a:Ljava/lang/String;

    return-object v0
.end method
