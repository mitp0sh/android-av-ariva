.class public final enum Lcom/mixpanel/android/mpmetrics/as;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/mixpanel/android/mpmetrics/as;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/mixpanel/android/mpmetrics/as;

.field public static final enum MULTIPLE_CHOICE:Lcom/mixpanel/android/mpmetrics/as;

.field public static final enum TEXT:Lcom/mixpanel/android/mpmetrics/as;

.field public static final enum UNKNOWN:Lcom/mixpanel/android/mpmetrics/as;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 85
    new-instance v0, Lcom/mixpanel/android/mpmetrics/as;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v2}, Lcom/mixpanel/android/mpmetrics/as;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mixpanel/android/mpmetrics/as;->UNKNOWN:Lcom/mixpanel/android/mpmetrics/as;

    .line 86
    new-instance v0, Lcom/mixpanel/android/mpmetrics/as;

    const-string v1, "MULTIPLE_CHOICE"

    invoke-direct {v0, v1, v3}, Lcom/mixpanel/android/mpmetrics/as;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mixpanel/android/mpmetrics/as;->MULTIPLE_CHOICE:Lcom/mixpanel/android/mpmetrics/as;

    .line 87
    new-instance v0, Lcom/mixpanel/android/mpmetrics/as;

    const-string v1, "TEXT"

    invoke-direct {v0, v1, v4}, Lcom/mixpanel/android/mpmetrics/as;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mixpanel/android/mpmetrics/as;->TEXT:Lcom/mixpanel/android/mpmetrics/as;

    .line 84
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/mixpanel/android/mpmetrics/as;

    sget-object v1, Lcom/mixpanel/android/mpmetrics/as;->UNKNOWN:Lcom/mixpanel/android/mpmetrics/as;

    aput-object v1, v0, v2

    sget-object v1, Lcom/mixpanel/android/mpmetrics/as;->MULTIPLE_CHOICE:Lcom/mixpanel/android/mpmetrics/as;

    aput-object v1, v0, v3

    sget-object v1, Lcom/mixpanel/android/mpmetrics/as;->TEXT:Lcom/mixpanel/android/mpmetrics/as;

    aput-object v1, v0, v4

    sput-object v0, Lcom/mixpanel/android/mpmetrics/as;->$VALUES:[Lcom/mixpanel/android/mpmetrics/as;

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
    .line 84
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mixpanel/android/mpmetrics/as;
    .locals 1

    .prologue
    .line 84
    const-class v0, Lcom/mixpanel/android/mpmetrics/as;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/mixpanel/android/mpmetrics/as;

    return-object v0
.end method

.method public static values()[Lcom/mixpanel/android/mpmetrics/as;
    .locals 1

    .prologue
    .line 84
    sget-object v0, Lcom/mixpanel/android/mpmetrics/as;->$VALUES:[Lcom/mixpanel/android/mpmetrics/as;

    invoke-virtual {v0}, [Lcom/mixpanel/android/mpmetrics/as;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mixpanel/android/mpmetrics/as;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    sget-object v0, Lcom/mixpanel/android/mpmetrics/as;->MULTIPLE_CHOICE:Lcom/mixpanel/android/mpmetrics/as;

    if-ne v0, p0, :cond_0

    .line 92
    const-string v0, "multiple_choice"

    .line 97
    :goto_0
    return-object v0

    .line 94
    :cond_0
    sget-object v0, Lcom/mixpanel/android/mpmetrics/as;->TEXT:Lcom/mixpanel/android/mpmetrics/as;

    if-ne v0, p0, :cond_1

    .line 95
    const-string v0, "text"

    goto :goto_0

    .line 97
    :cond_1
    const-string v0, "*unknown_type*"

    goto :goto_0
.end method
