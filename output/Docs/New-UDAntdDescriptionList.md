# New-UDAntdDescriptionList

## SYNOPSIS
Sample control for UniversalDashboard.

## SYNTAX

```
New-UDAntdDescriptionList [[-Id] <String>] [[-ClassName] <String>] [[-Title] <String>] [-Bordered]
 [[-Content] <ScriptBlock>] [-IsEndpoint] [-AutoRefresh] [[-RefreshInterval] <Int32>] [[-Size] <String>]
 [[-Layout] <String>] [[-Style] <Hashtable>] [<CommonParameters>]
```

## DESCRIPTION
Sample control function for UniversalDashboard.
This function must have an ID and return a hash table.

## EXAMPLES

### EXAMPLE 1
```
<example usage>
```

Explanation of what the example does

## PARAMETERS

### -Id
An id for the component default value will be generated by new-guid.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 1
Default value: (New-Guid).ToString()
Accept pipeline input: False
Accept wildcard characters: False
```

### -ClassName
{{ Fill ClassName Description }}

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 2
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Title
{{ Fill Title Description }}

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 3
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Bordered
{{ Fill Bordered Description }}

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -Content
{{ Fill Content Description }}

```yaml
Type: ScriptBlock
Parameter Sets: (All)
Aliases:

Required: False
Position: 4
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -IsEndpoint
{{ Fill IsEndpoint Description }}

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -AutoRefresh
{{ Fill AutoRefresh Description }}

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -RefreshInterval
{{ Fill RefreshInterval Description }}

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: False
Position: 5
Default value: 5000
Accept pipeline input: False
Accept wildcard characters: False
```

### -Size
{{ Fill Size Description }}

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 6
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Layout
{{ Fill Layout Description }}

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 7
Default value: Horizontal
Accept pipeline input: False
Accept wildcard characters: False
```

### -Style
{{ Fill Style Description }}

```yaml
Type: Hashtable
Parameter Sets: (All)
Aliases:

Required: False
Position: 8
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

### Inputs (if any)
## OUTPUTS

### Output (if any)
## NOTES
General notes

## RELATED LINKS