.class final enum Lio/fabric/sdk/android/services/b/n;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lio/fabric/sdk/android/services/b/n;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/fabric/sdk/android/services/b/n;

.field public static final enum ARM64:Lio/fabric/sdk/android/services/b/n;

.field public static final enum ARMV6:Lio/fabric/sdk/android/services/b/n;

.field public static final enum ARMV7:Lio/fabric/sdk/android/services/b/n;

.field public static final enum ARMV7S:Lio/fabric/sdk/android/services/b/n;

.field public static final enum ARM_UNKNOWN:Lio/fabric/sdk/android/services/b/n;

.field public static final enum PPC:Lio/fabric/sdk/android/services/b/n;

.field public static final enum PPC64:Lio/fabric/sdk/android/services/b/n;

.field public static final enum UNKNOWN:Lio/fabric/sdk/android/services/b/n;

.field public static final enum X86_32:Lio/fabric/sdk/android/services/b/n;

.field public static final enum X86_64:Lio/fabric/sdk/android/services/b/n;

.field private static final matcher:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lio/fabric/sdk/android/services/b/n;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x4

    .line 158
    new-instance v0, Lio/fabric/sdk/android/services/b/n;

    const-string v1, "X86_32"

    invoke-direct {v0, v1, v4}, Lio/fabric/sdk/android/services/b/n;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/fabric/sdk/android/services/b/n;->X86_32:Lio/fabric/sdk/android/services/b/n;

    .line 159
    new-instance v0, Lio/fabric/sdk/android/services/b/n;

    const-string v1, "X86_64"

    invoke-direct {v0, v1, v5}, Lio/fabric/sdk/android/services/b/n;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/fabric/sdk/android/services/b/n;->X86_64:Lio/fabric/sdk/android/services/b/n;

    .line 160
    new-instance v0, Lio/fabric/sdk/android/services/b/n;

    const-string v1, "ARM_UNKNOWN"

    invoke-direct {v0, v1, v6}, Lio/fabric/sdk/android/services/b/n;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/fabric/sdk/android/services/b/n;->ARM_UNKNOWN:Lio/fabric/sdk/android/services/b/n;

    .line 161
    new-instance v0, Lio/fabric/sdk/android/services/b/n;

    const-string v1, "PPC"

    invoke-direct {v0, v1, v7}, Lio/fabric/sdk/android/services/b/n;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/fabric/sdk/android/services/b/n;->PPC:Lio/fabric/sdk/android/services/b/n;

    .line 162
    new-instance v0, Lio/fabric/sdk/android/services/b/n;

    const-string v1, "PPC64"

    invoke-direct {v0, v1, v3}, Lio/fabric/sdk/android/services/b/n;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/fabric/sdk/android/services/b/n;->PPC64:Lio/fabric/sdk/android/services/b/n;

    .line 163
    new-instance v0, Lio/fabric/sdk/android/services/b/n;

    const-string v1, "ARMV6"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lio/fabric/sdk/android/services/b/n;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/fabric/sdk/android/services/b/n;->ARMV6:Lio/fabric/sdk/android/services/b/n;

    .line 164
    new-instance v0, Lio/fabric/sdk/android/services/b/n;

    const-string v1, "ARMV7"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lio/fabric/sdk/android/services/b/n;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/fabric/sdk/android/services/b/n;->ARMV7:Lio/fabric/sdk/android/services/b/n;

    .line 165
    new-instance v0, Lio/fabric/sdk/android/services/b/n;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lio/fabric/sdk/android/services/b/n;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/fabric/sdk/android/services/b/n;->UNKNOWN:Lio/fabric/sdk/android/services/b/n;

    .line 166
    new-instance v0, Lio/fabric/sdk/android/services/b/n;

    const-string v1, "ARMV7S"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lio/fabric/sdk/android/services/b/n;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/fabric/sdk/android/services/b/n;->ARMV7S:Lio/fabric/sdk/android/services/b/n;

    .line 167
    new-instance v0, Lio/fabric/sdk/android/services/b/n;

    const-string v1, "ARM64"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lio/fabric/sdk/android/services/b/n;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/fabric/sdk/android/services/b/n;->ARM64:Lio/fabric/sdk/android/services/b/n;

    .line 157
    const/16 v0, 0xa

    new-array v0, v0, [Lio/fabric/sdk/android/services/b/n;

    sget-object v1, Lio/fabric/sdk/android/services/b/n;->X86_32:Lio/fabric/sdk/android/services/b/n;

    aput-object v1, v0, v4

    sget-object v1, Lio/fabric/sdk/android/services/b/n;->X86_64:Lio/fabric/sdk/android/services/b/n;

    aput-object v1, v0, v5

    sget-object v1, Lio/fabric/sdk/android/services/b/n;->ARM_UNKNOWN:Lio/fabric/sdk/android/services/b/n;

    aput-object v1, v0, v6

    sget-object v1, Lio/fabric/sdk/android/services/b/n;->PPC:Lio/fabric/sdk/android/services/b/n;

    aput-object v1, v0, v7

    sget-object v1, Lio/fabric/sdk/android/services/b/n;->PPC64:Lio/fabric/sdk/android/services/b/n;

    aput-object v1, v0, v3

    const/4 v1, 0x5

    sget-object v2, Lio/fabric/sdk/android/services/b/n;->ARMV6:Lio/fabric/sdk/android/services/b/n;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lio/fabric/sdk/android/services/b/n;->ARMV7:Lio/fabric/sdk/android/services/b/n;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lio/fabric/sdk/android/services/b/n;->UNKNOWN:Lio/fabric/sdk/android/services/b/n;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lio/fabric/sdk/android/services/b/n;->ARMV7S:Lio/fabric/sdk/android/services/b/n;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lio/fabric/sdk/android/services/b/n;->ARM64:Lio/fabric/sdk/android/services/b/n;

    aput-object v2, v0, v1

    sput-object v0, Lio/fabric/sdk/android/services/b/n;->$VALUES:[Lio/fabric/sdk/android/services/b/n;

    .line 169
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v3}, Ljava/util/HashMap;-><init>(I)V

    .line 172
    sput-object v0, Lio/fabric/sdk/android/services/b/n;->matcher:Ljava/util/Map;

    const-string v1, "armeabi-v7a"

    sget-object v2, Lio/fabric/sdk/android/services/b/n;->ARMV7:Lio/fabric/sdk/android/services/b/n;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    sget-object v0, Lio/fabric/sdk/android/services/b/n;->matcher:Ljava/util/Map;

    const-string v1, "armeabi"

    sget-object v2, Lio/fabric/sdk/android/services/b/n;->ARMV6:Lio/fabric/sdk/android/services/b/n;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    sget-object v0, Lio/fabric/sdk/android/services/b/n;->matcher:Ljava/util/Map;

    const-string v1, "x86"

    sget-object v2, Lio/fabric/sdk/android/services/b/n;->X86_32:Lio/fabric/sdk/android/services/b/n;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 157
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method static a()Lio/fabric/sdk/android/services/b/n;
    .locals 2

    .prologue
    .line 182
    sget-object v0, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    .line 184
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 185
    invoke-static {}, Lio/fabric/sdk/android/b;->c()Lio/fabric/sdk/android/q;

    move-result-object v0

    invoke-interface {v0}, Lio/fabric/sdk/android/q;->b()V

    .line 187
    sget-object v0, Lio/fabric/sdk/android/services/b/n;->UNKNOWN:Lio/fabric/sdk/android/services/b/n;

    .line 195
    :cond_0
    :goto_0
    return-object v0

    .line 190
    :cond_1
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 191
    sget-object v1, Lio/fabric/sdk/android/services/b/n;->matcher:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/fabric/sdk/android/services/b/n;

    .line 192
    if-nez v0, :cond_0

    .line 193
    sget-object v0, Lio/fabric/sdk/android/services/b/n;->UNKNOWN:Lio/fabric/sdk/android/services/b/n;

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lio/fabric/sdk/android/services/b/n;
    .locals 1

    .prologue
    .line 157
    const-class v0, Lio/fabric/sdk/android/services/b/n;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lio/fabric/sdk/android/services/b/n;

    return-object v0
.end method

.method public static values()[Lio/fabric/sdk/android/services/b/n;
    .locals 1

    .prologue
    .line 157
    sget-object v0, Lio/fabric/sdk/android/services/b/n;->$VALUES:[Lio/fabric/sdk/android/services/b/n;

    invoke-virtual {v0}, [Lio/fabric/sdk/android/services/b/n;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/fabric/sdk/android/services/b/n;

    return-object v0
.end method
