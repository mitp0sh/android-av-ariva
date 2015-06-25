.class final enum Lcom/avira/android/antitheft/wipe/l;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/avira/android/antitheft/wipe/l;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/avira/android/antitheft/wipe/l;

.field public static final enum CONTACTS:Lcom/avira/android/antitheft/wipe/l;

.field public static final enum SMS:Lcom/avira/android/antitheft/wipe/l;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 85
    new-instance v0, Lcom/avira/android/antitheft/wipe/l;

    const-string v1, "SMS"

    invoke-direct {v0, v1, v2}, Lcom/avira/android/antitheft/wipe/l;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/avira/android/antitheft/wipe/l;->SMS:Lcom/avira/android/antitheft/wipe/l;

    new-instance v0, Lcom/avira/android/antitheft/wipe/l;

    const-string v1, "CONTACTS"

    invoke-direct {v0, v1, v3}, Lcom/avira/android/antitheft/wipe/l;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/avira/android/antitheft/wipe/l;->CONTACTS:Lcom/avira/android/antitheft/wipe/l;

    .line 83
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/avira/android/antitheft/wipe/l;

    sget-object v1, Lcom/avira/android/antitheft/wipe/l;->SMS:Lcom/avira/android/antitheft/wipe/l;

    aput-object v1, v0, v2

    sget-object v1, Lcom/avira/android/antitheft/wipe/l;->CONTACTS:Lcom/avira/android/antitheft/wipe/l;

    aput-object v1, v0, v3

    sput-object v0, Lcom/avira/android/antitheft/wipe/l;->$VALUES:[Lcom/avira/android/antitheft/wipe/l;

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
    .line 83
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/avira/android/antitheft/wipe/l;
    .locals 1

    .prologue
    .line 83
    const-class v0, Lcom/avira/android/antitheft/wipe/l;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/avira/android/antitheft/wipe/l;

    return-object v0
.end method

.method public static values()[Lcom/avira/android/antitheft/wipe/l;
    .locals 1

    .prologue
    .line 83
    sget-object v0, Lcom/avira/android/antitheft/wipe/l;->$VALUES:[Lcom/avira/android/antitheft/wipe/l;

    invoke-virtual {v0}, [Lcom/avira/android/antitheft/wipe/l;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/avira/android/antitheft/wipe/l;

    return-object v0
.end method
