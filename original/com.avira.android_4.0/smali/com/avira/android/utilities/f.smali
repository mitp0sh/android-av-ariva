.class public final enum Lcom/avira/android/utilities/f;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/avira/android/utilities/f;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/avira/android/utilities/f;

.field public static final enum KIEVIT_LIGHT:Lcom/avira/android/utilities/f;

.field public static final enum KIEVIT_NORMAL:Lcom/avira/android/utilities/f;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 22
    new-instance v0, Lcom/avira/android/utilities/f;

    const-string v1, "KIEVIT_NORMAL"

    invoke-direct {v0, v1, v2}, Lcom/avira/android/utilities/f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/avira/android/utilities/f;->KIEVIT_NORMAL:Lcom/avira/android/utilities/f;

    new-instance v0, Lcom/avira/android/utilities/f;

    const-string v1, "KIEVIT_LIGHT"

    invoke-direct {v0, v1, v3}, Lcom/avira/android/utilities/f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/avira/android/utilities/f;->KIEVIT_LIGHT:Lcom/avira/android/utilities/f;

    .line 20
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/avira/android/utilities/f;

    sget-object v1, Lcom/avira/android/utilities/f;->KIEVIT_NORMAL:Lcom/avira/android/utilities/f;

    aput-object v1, v0, v2

    sget-object v1, Lcom/avira/android/utilities/f;->KIEVIT_LIGHT:Lcom/avira/android/utilities/f;

    aput-object v1, v0, v3

    sput-object v0, Lcom/avira/android/utilities/f;->$VALUES:[Lcom/avira/android/utilities/f;

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
    .line 20
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/avira/android/utilities/f;
    .locals 1

    .prologue
    .line 20
    const-class v0, Lcom/avira/android/utilities/f;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/avira/android/utilities/f;

    return-object v0
.end method

.method public static values()[Lcom/avira/android/utilities/f;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/avira/android/utilities/f;->$VALUES:[Lcom/avira/android/utilities/f;

    invoke-virtual {v0}, [Lcom/avira/android/utilities/f;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/avira/android/utilities/f;

    return-object v0
.end method
